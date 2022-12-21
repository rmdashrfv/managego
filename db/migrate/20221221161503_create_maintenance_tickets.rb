class CreateMaintenanceTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :maintenance_tickets do |t|
      t.integer :tenant_id
      t.integer :apartment_id
      t.text :note
      t.integer :urgency, default: 0
      t.boolean :resolved, default: false

      t.timestamps
    end
  end
end
