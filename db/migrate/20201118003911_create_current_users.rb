class CreateCurrentUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :current_users do |t|

      t.timestamps
    end
  end
end
