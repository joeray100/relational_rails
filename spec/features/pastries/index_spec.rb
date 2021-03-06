require 'rails_helper'

# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes:
describe "Show Pastries table" do
  it "shows the entire pastry table with attributes" do
    bakery1 = Bakery.create!(name: "Cupcakes", rank: 1, open: true)
    cake = bakery1.pastries.create!(name: "Chocolate Cake", price: 4, gluten_free: true)
    bread = bakery1.pastries.create!(name: "Kopf", price: 7, gluten_free: true)
    visit "/pastries"
    expect(page).to have_content(cake.name)
    expect(page).to have_content(cake.price)
    expect(page).to have_content(cake.gluten_free)
    expect(page).to have_content(bread.name)
    expect(page).to have_content(bread.price)
    expect(page).to have_content(bread.gluten_free)
  end
end

# As a visitor
# When I visit any page on the site
# Then I see a link at the top of the page that takes me to the Child Index
  describe "Visit any page" do
    it "Shows a link at the top of the page that takes me to a child index" do

    visit "/pastries"
    expect(page).to have_link("Employees")
    expect(page).to have_link("Businesses")
    expect(page).to have_link("Bakeries")
    end
  end

  # When I visit the child index
  # Then I only see records where the boolean column is `true`
  describe "Pastry Index" do
      it "shows Only records where the Boolean Column is true" do
      bakery1 = Bakery.create!(name: "Cupcakes", rank: 1, open: true)
      cake = bakery1.pastries.create!(name: "Chocolate Cake", price: 4, gluten_free: true)
      bread = bakery1.pastries.create!(name: "Kopf", price: 7, gluten_free: true)

      visit "/pastries"
      expect(page).to have_content(cake.name)
      expect(page).to have_content(cake.price)
      expect(page).to have_content(cake.gluten_free)
      expect(page).to have_content(bread.name)
      expect(page).to have_content(bread.price)
      expect(page).to have_content(bread.gluten_free)
  end
end
