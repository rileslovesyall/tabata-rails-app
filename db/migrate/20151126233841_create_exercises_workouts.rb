class CreateExercisesWorkouts < ActiveRecord::Migration
  def change
    create_table :exercises_workouts do |t|
      t.integer :exercise_id
      t.integer :workout_id

      t.timestamps null: false
    end
  end
end
