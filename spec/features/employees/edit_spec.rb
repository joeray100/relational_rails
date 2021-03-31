require 'rails_helper'

# When I visit a Child Show page
# Then I see a link to update that Child "Update Child"
# When I click the link
# I am taken to '/child_table_name/:id/edit' where I see a form to edit the child's attributes:
# When I click the button to submit the form "Update Child"
# Then a `PATCH` request is sent to '/child_table_name/:id',
# the child's data is updated,
# and I am redirected to the Child Show page where I see the Child's updated information
describe "User Updates an Employee" do
  it "User can update an employee from the employee page or through the business" do
    business1 = create(:business, big_company: true)
    employee1 = create(:employee, business_id: business1.id, likes_job: true )

    visit "/employees"
    visit "/employees/#{employee1.id}"

    click_link 'Update'

    expect(current_path).to eq("/employees/#{employee1.id}/edit")

    fill_in 'Name', with: 'Aaron Carter'
    fill_in "hours_worked", with: 3
    fill_in "likes_job", with: true
    click_on 'Update'

    expect(current_path).to eq("/employees/#{employee1.id}")
    expect(page).to have_content('Aaron Carter')
    expect(page).to have_content(3)
    expect(page).to have_content(true)
  end
end
