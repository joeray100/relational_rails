require "rails_helper"
describe Business, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:rank)}
    # it {should validate_presence_of(:big_company)}
  end
  describe 'relationships' do
    it { should have_many :employees }
  end
  describe "order of bakeries" do
    before(:each) do
      the_office = Business.create!(name: 'the office', rank: 1, big_company: true, created_at: "2021-03-28 20:35:42.428522")
      parks_and_rec = Business.create!(name: 'parks and rec', rank: 2, big_company: true, created_at: "2021-03-27 20:10:42.42464")
    end
    subject {Business.most_recently_created}
    it "should return a list of businesses in order of created_at" do
      expect(Business.most_recently_created) == [@the_office, @parks_and_rec]
    end
  end
end
