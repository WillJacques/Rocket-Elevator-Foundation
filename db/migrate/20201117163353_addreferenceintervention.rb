class Addreferenceintervention < ActiveRecord::Migration[5.2]
  def change
    add_reference :interventions, :customer
    add_reference :interventions, :building
    add_reference :interventions, :battery
    add_reference :interventions, :column
    add_reference :interventions, :employee
  end
end
