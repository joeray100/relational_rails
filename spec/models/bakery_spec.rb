require "rails_helper"

describe Bakery, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:open)}
    it {should validate_presence_of(:rank)}
  end
end
