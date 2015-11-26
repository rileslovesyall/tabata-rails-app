class Workout < ActiveRecord::Base
	belongs_to :user 
	has_many :exercises, through: :exercises_workouts
	has_many :exercises_workouts

	def self.generate 
		exercise1 = Exercise.find(rand(1..(Exercise.all.length)))
		exercise2 = Exercise.find(rand(1..(Exercise.all.length)))
		until exercise1 != exercise2
			exercise2 = Exercise.find(rand(1..(Exercise.all.length)))
		end
		generated_exs = [exercise1, exercise2]
		return generated_exs
	end

end
