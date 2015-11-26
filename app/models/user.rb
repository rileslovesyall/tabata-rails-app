class User < ActiveRecord::Base
	has_many :workouts    
	has_many :users_exercises
	has_many :exercises, through: :users_exercises

	scope :favorite_exercises, -> {
	 joins(:users_exercises).
	 where("users_exercises.is_favorite = ?", true)
	}

	attr_accessor :password
	validates_confirmation_of :password
	before_save :encrypt_password

	def encrypt_password
		self.password_salt = BCrypt::Engine.generate_salt
		self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
	end

	def self.authenticate(username, password)
		user = User.where(username: username).first
		if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
		user
		else
		nil
		end
	end

	
end
