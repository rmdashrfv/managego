class AddManagerIdToMaintenanceTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :maintenance_tickets, :manager_id, :integer
  end
end
