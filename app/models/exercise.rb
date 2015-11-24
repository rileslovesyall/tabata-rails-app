class Exercise < ActiveRecord::Base
	has_many :workouts, :through => :exercises_workouts
	belongs_to :user
	has_many :favorite_exercises
	has_many :favorited_by, through: :favorite_exercises

end
