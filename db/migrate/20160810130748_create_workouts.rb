class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.string :comment, null: false
      t.references :user, index: true, foreign_key: true
      t.references :drill, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
