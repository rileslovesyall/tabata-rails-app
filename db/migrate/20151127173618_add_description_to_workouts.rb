class AddDescriptionToWorkouts < ActiveRecord::Migration
  def change
  	add_column(:workouts, :description, :string)
  end
end
