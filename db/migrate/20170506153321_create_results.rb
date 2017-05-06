class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :move_id
      t.integer :user_id
      t.float :weight
      t.integer :reps

      t.timestamps null: false
    end
  end
end
