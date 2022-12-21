class CreateApartments < ActiveRecord::Migration[6.1]
  def change
    create_table :apartments do |t|
      t.string :apt_no
      t.integer :building_id
      t.integer :lease_id

      t.timestamps
    end
  end
end
