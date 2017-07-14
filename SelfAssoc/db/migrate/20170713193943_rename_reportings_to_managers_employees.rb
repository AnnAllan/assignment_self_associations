class RenameReportingsToManagersEmployees < ActiveRecord::Migration[5.0]
  def change
    rename_table :reportings, :managers_employees
  end
end
