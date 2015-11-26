class Workout < ActiveRecord::Base
	belongs_to :user 
	has_many :exercises, through: :exercises_workouts
	has_many :exercises_workouts

	def self.generate 
		exercise1 = Exercise.find(rand(0..(Exercise.length-1)))
		exercise2 = Exercise.find(rand(0..(Exercise.length-1))) until exercise2 != exercise1
		generated_exs = [exercise1, exercise2]
		return generated_exs
	end

end
