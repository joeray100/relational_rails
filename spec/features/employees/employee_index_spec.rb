require 'rails_helper'

# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes:
describe "Show child table" do
  it "shows the entire child table with attributes" do
    business1 = Business.create!(name: "Name 1", rank: 1, big_company: true)
    bob = business1.employees.create!(name: "Bob", hours_worked: 4, likes_job: true)
    george = business1.employees.create!(name: "George", hours_worked: 7, likes_job: false)

    visit "/employees"
    expect(page). to have_content(bob.name)
    expect(page). to have_content(bob.hours_worked)
    expect(page). to have_content(bob.likes_job)
    expect(page). to have_content(george.name)
    expect(page). to have_content(george.hours_worked)
    expect(page). to have_content(george.likes_job)
  end

  it "Shows a link at the top of the page that takes me to a child index" do

    visit "/employees"
    expect(page).to have_link("Businesses")
    expect(page).to have_link("Pastries")
    expect(page).to have_link("Bakeries")
  end
end
