class Modifyinterventions < ActiveRecord::Migration[5.2]
  def change
    change_column :interventions, :result, :string, :default => 'Incomplete'
    change_column :interventions, :status, :string, :default => 'Pending'
    add_column :interventions, :employeeID, :integer
    add_column :interventions, :columnID, :integer
    add_column :interventions, :batteryID, :integer
    add_column :interventions, :customerID, :integer, null: false
    add_column :interventions, :buildingID, :integer, null: false
    add_column :interventions, :author, :integer, null: false
  end
end