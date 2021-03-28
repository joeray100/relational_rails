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
end
