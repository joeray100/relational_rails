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
  describe ".true_employees" do
    subject { Employee.true_employees}
    it "should return pastry if gluten free is true" do
      the_office = Business.create!(name: 'the office', rank: 1, big_company: true)
      @jim = the_office.employees.create!(name: "jim", hours_worked: 8, likes_job: true)
      @bob = the_office.employees.create!(name: "bob", hours_worked: 2, likes_job: true)
      expect(should) == Employee.true_employees
    end
  end
  describe "alphabetical order of employees" do
    before(:each) do
      the_office = Business.create!(name: 'the office', rank: 1, big_company: true)
      @jim = the_office.employees.create!(name: "jim", hours_worked: 8, likes_job: true)
      @bob = the_office.employees.create!(name: "bob", hours_worked: 2, likes_job: true)
    end
    it "should return a list of employees in alphabetical order" do
      expect(Employee.order_by_name) == [@bob, @jim]
    end
  end
end
