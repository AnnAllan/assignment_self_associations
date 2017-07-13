class Person < ApplicationRecord
  has_many :employee_reporting, foreign_key: :manager_id,
                                class_name: 'Reporting'

  has_many :employees,          through: :employee_reporting,
                                source: :manager

  has_many :manager_reporting,  foreign_key: :employee_id,
                                class_name: 'Reporting'

  has_many :managers,           through: :manager_reporting,
                                source: :employee

end
