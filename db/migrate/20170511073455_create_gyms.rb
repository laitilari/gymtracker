class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :name
      t.integer :founded
      t.string :address

      t.timestamps null: false
    end
  end
end
