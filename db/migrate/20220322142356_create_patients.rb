class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :email
      t.string :cnic
      t.string :blood_group

      t.timestamps
    end
  end
end
