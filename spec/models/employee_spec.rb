require "rails_helper"

describe Employee, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:hours_worked)}
    it {should validate_presence_of(:likes_job)}
  end
end

describe Employee, type: :model do
  describe 'relationships' do
    it { should belong_to :business }
  end
end

describe ".true_employees" do
  subject {Employee.true_employees}
  it "should return employee if likes job is true" do
    bank = Business.create!(name: 'This Bank', rank: 1, big_company: true)
    @bonnie =bank.employees.create!(name: "Bonnie", hours_worked: 4, likes_job: true)
   expect(should) == Employee.true_employees
  end
end
