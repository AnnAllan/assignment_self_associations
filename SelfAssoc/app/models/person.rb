class Person < ApplicationRecord
  has_many :managers_employees, foreign_key: :manager_id,
                                dependent: :destroy

  has_many :employees,          through: :managers_employees

  has_many :managers_employees,  foreign_key: :employee_id,
                                 dependent: :destroy

  has_many :managers,           through: :managers_employees


end
