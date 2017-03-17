class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
