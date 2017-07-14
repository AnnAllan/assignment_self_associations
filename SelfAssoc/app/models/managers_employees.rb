class ManagersEmployees < ApplicationRecord
  belongs_to :employee, class_name: "Person"

  belongs_to :manager,  class_name: "Person"

  validates :employee_id, uniqueness: {scope: :manager_id}                      

end
