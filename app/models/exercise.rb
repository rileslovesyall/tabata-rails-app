class Exercise < ActiveRecord::Base
  belongs_to :user
  has_many :workouts, through: :exercises_workouts
  has_many :exercises_workouts
  validates :name, :body_focus, :description, presence: true

  # Not sure what this method is??
  # def self.length
  #   return Exercise
  # end

end
