class AddPositionToPerson < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :position, :string
  end
end
