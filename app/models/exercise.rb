class Exercise < ActiveRecord::Base
	belongs_to :user
	has_many :workouts, :through => :exercises_workouts
	has_many :favorite_exercises
	has_many :favorited_by, through: :favorite_exercises, source: :user

end
