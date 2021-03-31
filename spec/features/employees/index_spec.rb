require 'rails_helper'

# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes:
describe "Show Employees table" do
  it "shows the entire employee table with attributes" do
    business1 = create(:business, big_company: true)
    employee1 = create(:employee, business_id: business1.id, likes_job: true )
    employee2 = create(:employee, business_id: business1.id, likes_job: true)

    visit "/employees"
    expect(page).to have_content(employee1.name)
    expect(page).to have_content(employee1.hours_worked)
    expect(page).to have_content(employee1.likes_job)
    expect(page).to have_content(employee2.name)
    expect(page).to have_content(employee2.hours_worked)
    expect(page).to have_content(employee2.likes_job)
  end

  it "Shows a link at the top of the page that takes me to a child index" do

    visit "/employees"
    expect(page).to have_link("Businesses")
    expect(page).to have_link("Pastries")
    expect(page).to have_link("Bakeries")
  end
end

  # When I visit the child index
  # Then I only see records where the boolean column is `true`
  describe "Employee Index" do
    it "Shows Only records where the Boolean Column is true" do
      business1 = create(:business, big_company:true)
      employee1 = create(:employee, business_id: business1.id, likes_job: true )
      employee2 = create(:employee, business_id: business1.id, likes_job: true)

      visit "/employees"
      expect(page).to have_content(employee1.name)
      expect(page).to have_content(employee1.likes_job)
      expect(page).to have_content(employee1.hours_worked)
      expect(page).to have_content(employee2.name)
      expect(page).to have_content(employee2.likes_job)
      expect(page).to have_content(employee2.hours_worked)
  end
end
