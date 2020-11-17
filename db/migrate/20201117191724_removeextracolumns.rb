class Removeextracolumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :interventions, :employeeID
    remove_column :interventions, :columnID
    remove_column :interventions, :batteryID
    remove_column :interventions, :customerID
    remove_column :interventions, :buildingID
  end
end
