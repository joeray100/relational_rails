require "rails_helper"

describe Pastry, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:price)}
    # it {should validate_presence_of(:gluten_free)}
  end
end

describe Pastry, type: :model do
  describe 'relationships' do
    it {should belong_to :bakery}
  end
end

describe ".gluten_free_true" do
  subject { Pastry.gluten_free_true}
  it "should return pastry if gluten free is true" do
    talking_breads = Bakery.create!(name: 'Talking Breads', rank: 1, open: true)
    @pastry =talking_breads.pastries.create!(name: "Cakes", price: 150, gluten_free: true)
   expect(should) == Pastry.gluten_free_true
  end
end
