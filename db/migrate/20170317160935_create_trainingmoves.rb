class CreateTrainingmoves < ActiveRecord::Migration
  def change
    create_table :trainingmoves do |t|
      t.integer :move_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
