class CreateReportings < ActiveRecord::Migration[5.0]
  def change
    create_table :reportings do |t|
      t.integer :manager_id, null: false
      t.integer :employee_id, null: false

      t.timestamps
    end
    add_index :reportings, [:manager_id, :employee_id], unique: true
  end
end
