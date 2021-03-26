require 'rails_helper'

# As a visitor
# When I visit a parent's show page
# I see a count of the number of children associated with this parent
  describe "Bakeries Pastries index" do
    it "display all pastries related to a bakery" do
      bakery1 = Bakery.create!(name: "Name 1", rank: 1, open: true)
      cake = bakery1.pastries.create!(name: "Chocolate Cake", price: 4, gluten_free: true)
      bread = bakery1.pastries.create!(name: "Kopf", price: 7, gluten_free: false)

      visit "/bakeries/#{bakery1.id}"
      expect(page). to have_content(bakery1.pastries.count)
  end
  end
