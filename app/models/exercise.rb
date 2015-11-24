class Exercise < ActiveRecord::Base
	has_many :workouts, :through => :exercises_workouts
	has_many :favorites
	has_many :users, through: :favorites

end
