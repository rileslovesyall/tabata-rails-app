RSpec.describe Exercise, type: :model do
  describe "validations" do
    it "has a name" do
      expect(build(:exercise)).to be_valid
    end
  end
end