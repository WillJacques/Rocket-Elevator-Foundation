class Addforeignkeyintervention < ActiveRecord::Migration[5.2]
  def change
    remove_column :interventions, :battery_id
    remove_column :interventions, :building_id
    remove_column :interventions, :column_id
    remove_column :interventions, :customer_id
    remove_column :interventions, :elevator_id
    remove_column :interventions, :employee_id
  end
end
