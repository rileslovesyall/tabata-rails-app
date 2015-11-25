class Exercise < ActiveRecord::Base
	has_many :workouts, :through => :exercises_workouts
	belongs_to :user
	has_many :favorites
	has_many :favorited_by, through: :favorite_exercises, source: :exercises

end
