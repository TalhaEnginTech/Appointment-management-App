class AddColumnsToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :doctor, :string
    add_column :appointments, :patient, :string
    add_column :appointments, :description, :text
  end
end
