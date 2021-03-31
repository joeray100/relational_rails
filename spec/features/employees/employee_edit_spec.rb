require 'rails_helper'

# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes:
describe "" do
  it "" do
    # business1 = Business.create!(name: "Name 1", rank: 1, big_company: true)
    # bob = business1.employees.create!(name: "Bob", hours_worked: 4, likes_job: true)
    # george = business1.employees.create!(name: "George", hours_worked: 7, likes_job: false)
    employee = create(:employee)

    visit "/employees"
    visit "/employees/#{employee.id}"

    click_link 'Update'

    expect(current_path).to eq("/employees/#{employee.id}/edit")

    fill_in 'Name', with: 'Aaron Carter'
    fill_in "hours_worked", with: 3
    fill_in "likes_job", with: true
    click_on 'Update'

    expect(current_path).to eq("/employees/#{employee.id}")
    expect(page).to have_content('Aaron Carter')
    expect(page).to have_content(3)
    expect(page).to have_content(true)
  end
end
