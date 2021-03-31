require "rails_helper"
# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes:
# - data from each column that is on the parent table

describe "bakeries show id" do
  it "shows all parent attributes" do
    bakery_1 = Bakery.create!(name: "Name 1", rank: 1, open: true)
    bakery_2 = Bakery.create!(name: "Name 2", rank: 2, open: true)
    bakery_3 = Bakery.create!(name: "Name 3", rank: 3, open: false)

    visit "/bakeries/#{bakery_1.id}"
    expect(page).to have_content(bakery_1.name)
    expect(page).to have_content(bakery_1.rank)
    expect(page).to have_content(bakery_1.open)

    visit "/bakeries/#{bakery_2.id}"
    expect(page).to have_content(bakery_2.name)
    expect(page).to have_content(bakery_2.rank)
    expect(page).to have_content(bakery_2.open)
 end
end

# As a visitor
# When I visit a parent's show page
# I see a count of the number of children associated with this parent
  describe "Bakeries Pastries index" do
    it "display all pastries related to a bakery" do
      bakery1 = Bakery.create!(name: "Name 1", rank: 1, open: true)
      cake = bakery1.pastries.create!(name: "Chocolate Cake", price: 4, gluten_free: true)
      bread = bakery1.pastries.create!(name: "Kopf", price: 7, gluten_free: false)

      visit "/bakeries/#{bakery1.id}"
      expect(page).to have_content(bakery1.pastries.count)
  end

  # As a visitor
  # When I visit a parent show page ('/parents/:id')
  # Then I see a link to take me to that parent's `child_table_name` page ('/parents/:id/child_table_name')
    describe 'parents show page' do
    it 'see a link to take me to that parents child table name' do
      bakery1 = Bakery.create!(name: "Name 1", rank: 1, open: true)
      bakery2 = Bakery.create!(name: "Name 2", rank: 2, open: false)
      cake = bakery1.pastries.create!(name: "Chocolate Cake", price: 4, gluten_free: true)
      bread = bakery1.pastries.create!(name: "Kopf", price: 7, gluten_free: false)
      brownie= bakery2.pastries.create!(name: "Brownies", price: 3, gluten_free: false)
      visit "/bakeries/#{bakery1.id}"
      expect(page).to have_link("Menu")
    end
  end
end
