require "rails_helper"

describe Business, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:rank)}
    it {should validate_presence_of(:big_company)}
  end
end

describe Business, type: :model do
  describe 'relationships' do
    it { should have_many :employees }
  end
end
