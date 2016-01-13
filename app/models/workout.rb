class Workout < ActiveRecord::Base
  belongs_to :user 
  has_many :completed_workouts
  has_many :exercises, through: :exercises_workouts
  has_many :exercises_workouts
  validates :name, presence: true

  def self.generate(num_exercises)
    exs = Exercise.all.shuffle
    generated_exs = []
    num_exercises.times do
      ex = exs.pop
      generated_exs.push(ex)
    end
    return generated_exs
  end

end
