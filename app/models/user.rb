class User < ActiveRecord::Base
	has_many :workouts    
	has_many :exercises
	has_many :completed_workouts

	attr_accessor :password
	validates_confirmation_of :password
	before_save :encrypt_password

	def encrypt_password
		self.password_salt = BCrypt::Engine.generate_salt
		self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
	end

	def self.authenticate(un, password)
		user = User.where(username: username).first
		if user && user.password_hash == BCrypt::Engine.hash_secret('g', user.password_salt)
		user
		else
		nil
		end
	end

	def activities
		activities = {}
		self.completed_workouts.each do |w|
			workout = Workout.find(w.workout_id)
			activities[w.id] = [workout, w.created_at]
		end
		return activities
	end
	
end
