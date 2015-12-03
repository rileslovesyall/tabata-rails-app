class Exercise < ActiveRecord::Base
  belongs_to :user
  has_many :workouts, through: :exercises_workouts
  has_many :exercises_workouts

  def self.length
    return Exercise
  end

end
