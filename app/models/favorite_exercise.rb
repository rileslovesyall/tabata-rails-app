class FavoriteExercise < ActiveRecord::Base
	belongs_to :exercises
	belongs_to :users
end
