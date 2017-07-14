class Person < ApplicationRecord





  has_many :our_employees,      foreign_key: :manager_id,
                                dependent: :destroy,
                                class_name: 'ManagersEmployee'


  has_many :employees,          through: :our_employees



  has_many :our_managers,  foreign_key: :employee_id,
                                 dependent: :destroy,
                                 class_name: 'ManagersEmployee'

  has_many :managers,           through: :our_managers



end
