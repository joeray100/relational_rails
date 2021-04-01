require 'rails_helper'
# As a visitor
# When I visit '/child_table_name/:id'
# Then I see the child with that id including the child's attributes:
describe "Show child table" do
  before :each do
    @business1 = create(:business)
    @business2 = create(:business)
    @employee1 = create(:employee, business_id: @business1.id, likes_job: true)
    @employee2 = create(:employee, business_id: @business2.id, likes_job: true)

    visit employees_path
end
    it "shows the entire child table with attributes" do

    visit "/businesses/#{@business1.id}/employees"
    expect(page).to have_content(@employee1.name)
    expect(page).to have_content(@employee1.hours_worked)
    expect(page).to have_content(@employee1.likes_job)

    visit "/businesses/#{@business2.id}/employees"
    expect(page).to have_content(@employee2.name)
    expect(page).to have_content(@employee2.hours_worked)
    expect(page).to have_content(@employee2.likes_job)
  end
end
