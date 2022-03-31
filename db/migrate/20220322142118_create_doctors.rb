class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :email
      t.string :cnic
      t.string :spec

      t.timestamps
    end
  end
end
