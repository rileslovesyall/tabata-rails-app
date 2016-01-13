require 'rails_helper'

RSpec.describe Exercise, type: :model do
  describe "validations" do
    it "must have a name, description, and body_focus" do
      expect(build(:exercise)).to be_valid
      expect(build(:exercise, name: nil)).to be_invalid
      expect(build(:exercise, description: nil)).to be_invalid
      expect(build(:exercise, body_focus: nil)).to be_invalid
    end
  end
end