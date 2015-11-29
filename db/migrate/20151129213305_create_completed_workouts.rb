class CreateCompletedWorkouts < ActiveRecord::Migration
  def change
    create_table :completed_workouts do |t|
      t.integer :user_id
      t.integer :workout_id

      t.timestamps null: false
    end
  end
end
