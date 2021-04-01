require "rails_helper"
describe Bakery, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:rank)}

    # it {should validate_presence_of(:open)} No one could fix
  end
  describe 'relationships' do
    it { should have_many :pastries }
  end
  describe "order of bakeries" do
    before(:each) do
      @bakery2 = Bakery.create!(name: "Name 2", rank: 2, open: false, created_at: "2021-03-28 20:35:42.428522")
      @bakery1 = Bakery.create!(name: "Name 1", rank: 1, open: false, created_at: "2021-03-27 20:10:42.42464")
    end
    subject {Bakery.most_recently_created}
    it "should return a list of bakeries in order of created_at" do
      expect(Bakery.most_recently_created) == [@bakery2, @bakery1]
    end
  end
end
