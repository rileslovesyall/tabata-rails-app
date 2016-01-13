require 'rails_helper'

RSpec.describe Workout, type: :model do
  describe "validations" do
    it "must have a name" do
      expect(build(:workout)).to be_valid
      expect(build(:workout, name: nil)).to be_invalid
    end
    it "belongs to a user" do
      expect(build(:workout).user).to be_an_instance_of(User)
    end
  end

  describe ".generate(num_exercises)" do
    let (:workout) {Workout.generate(3)}
    it "returns an array of Exercises" do
      expect(workout).to be_an_instance_of(Array)
      expect(workout[0]).to be_an_instance_of(Exercise)
    end
    it "returns num_exercises Exercises" do
      expect(workout.length).to eq(3)
    end
  end
end