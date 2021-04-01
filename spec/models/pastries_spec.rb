require "rails_helper"

describe Pastry, type: :model do
  describe 'relationships' do
    it {should belong_to :bakery}
  end
  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:price)}
    it {should validate_presence_of(:gluten_free)}
  end
  describe ".gluten_free_true" do
    subject { Pastry.gluten_free_true}
    it "should return pastry if gluten free is true" do
      talking_breads = Bakery.create!(name: 'Talking Breads', rank: 1, open: true)
      @pastry =talking_breads.pastries.create!(name: "Cakes", price: 150, gluten_free: true)
      expect(should) == Pastry.gluten_free_true
    end
  end
  describe "alphabetical order of pastries" do
    before(:each) do
      talking_breads = Bakery.create!(name: 'Talking Breads', rank: 1, open: true)
      fudge = talking_breads.pastries.create!(name: "fudge", price: 2, gluten_free: true)
      cake = talking_breads.pastries.create!(name: "cake", price: 8, gluten_free: true)
    end
    it "should return a list of pastries in alphabetical order" do
      expect(Pastry.order_by_name) == [@cake, @fudge]
    end
  end
end
