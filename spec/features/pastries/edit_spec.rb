require 'rails_helper'

## When I visit a Child Show page
# Then I see a link to update that Child "Update Child"
# When I click the link
# I am taken to '/child_table_name/:id/edit' where I see a form to edit the child's attributes:
# When I click the button to submit the form "Update Child"
# Then a `PATCH` request is sent to '/child_table_name/:id',
# the child's data is updated,
# and I am redirected to the Child Show page where I see the Child's updated information
describe "Update a pastry" do
  it "Updates pastry from the pastry index page or via the bakery id to pastry table" do
    sweets = Bakery.create!(name: "Sweet Shoppe", rank: 7, open: true)
    candy = sweets.pastries.create!(name: "Maple Candy", price: 7, gluten_free: true)


    visit "/pastries"
    visit "/pastries/#{candy.id}"

    click_link 'Edit'

    expect(current_path).to eq("/pastries/#{candy.id}/edit")

    fill_in 'Name', with: 'Maple Lolli'
    fill_in 'price', with: 3
    fill_in 'gluten_free', with: true
    click_on 'Update'

    expect(current_path).to eq("/pastries/#{candy.id}")
    expect(page).to have_content('Maple Lolli')
    expect(page).to have_content(3)
    expect(page).to have_content(true)
    expect(page).to_not have_content('Maple Candy')
  end
end
