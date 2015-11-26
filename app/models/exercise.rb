class Exercise < ActiveRecord::Base
	belongs_to :user
  has_many :workouts, :through => :exercises_workouts
  has_many :users_exercises
  has_many :users, through: :users_exercises

	def self.length
		return Exercise
	end

end
