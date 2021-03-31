require "rails_helper"

describe Bakery, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:rank)}
   end
end

describe Bakery, type: :model do
  describe 'relationships' do
    it { should have_many :pastries }
  end
end
