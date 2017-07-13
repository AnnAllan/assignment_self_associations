class ManagersEmployees < ApplicationRecord
  belongs_to :employee, foreign_key: :employee_id,
                        class_name: "Person",
                        optional: true
  belongs_to :manager,  foreign_key: :manager_id,
                        class_name: "Person",
                        optional: true

end
