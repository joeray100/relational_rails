require 'rails_helper'

# As a visitor
# When I visit '/parents/:parent_id/child_table_name'
# Then I see each Child that is associated with that Parent with each Child's attributes:

describe "Bakeries Pastries index" do
  it "display all pastries related to a bakery" do
    bakery1 = Bakery.create!(name: "Name 1", rank: 1, open: true)
    bakery2 = Bakery.create!(name: "Name 2", rank: 2, open: false)
    cake = bakery1.pastries.create!(name: "Chocolate Cake", price: 4, gluten_free: true)
    bread = bakery1.pastries.create!(name: "Kopf", price: 7, gluten_free: false)
    brownie= bakery2.pastries.create!(name: "Brownies", price: 3, gluten_free: false)

    visit "/bakeries/#{bakery1.id}/pastries"
    expect(page). to have_content(cake.name)
    expect(page). to have_content(cake.price)
    expect(page). to have_content(cake.gluten_free)
    expect(page). to have_content(bread.name)
    expect(page). to have_content(bread.price)
    expect(page). to have_content(bread.gluten_free)
    expect(page).not_to have_content(brownie.name)
  end


# As a visitor
# When I visit a Parent Childs Index page
# Then I see a link to add a new adoptable child for that parent "Create Child"
# When I click the link
# I am taken to '/parents/:parent_id/child_table_name/new' where I see a form to add a new adoptable child
# When I fill in the form with the child's attributes:
# And I click the button "Create Child"
# Then a `POST` request is sent to '/parents/:parent_id/child_table_name',
# a new child object/row is created for that parent,
# and I am redirected to the Parent Childs Index page where I can see the new child listed
describe "user creates a new pastry" do
  describe "they link from the bakeries index" do
    describe "they fill in the appropriate fields" do
      it "creates a new pastry for a specific bakery" do
        visit bakeries_path
        click_link "New Menu Item"

        expect(current_path).to eq('/bakeries/new')

        fill_in "bakery[name]", with: "Brians Donuts"
        fill_in "bakery[rank]", with: 4
        fill_in "bakery[open]", with: true

        click_on "Create Bakery"

        expect(page).to have_content("Brians Donuts")

      end
    end
  end
end
end
