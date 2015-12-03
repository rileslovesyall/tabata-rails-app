class Workout < ActiveRecord::Base
  belongs_to :user 
  has_many :completed_workouts
  has_many :exercises, through: :exercises_workouts
  has_many :exercises_workouts

  def self.generate(x)
    exs = Exercise.all.shuffle
    gen_exs = []
    x.times do
      ex = exs.pop
      gen_exs.push(ex)
    end
    return gen_exs
  end

end
