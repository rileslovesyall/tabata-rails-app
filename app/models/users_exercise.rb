class UsersExercise < ActiveRecord::Base
	belongs_to :exercise
	belongs_to :user
end
