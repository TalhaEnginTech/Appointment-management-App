class AddStatusToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :status, :integer
  end
end
