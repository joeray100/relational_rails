require 'rails_helper'
# As a visitor
# When I visit '/child_table_name/:id'
# Then I see the child with that id including the child's attributes:
describe "Show child with id" do
    it "see the child with that" do
    bakery1 = Bakery.create!(name: "Name 1", rank: 1, open: true)
    cake = bakery1.pastries.create!(name: "Chocolate Cake", price: 4, gluten_free: true)
    bread = bakery1.pastries.create!(name: "Kopf", price: 7, gluten_free: true)

    visit "/pastries/#{cake.id}"
    expect(page).to have_content(cake.name)
    expect(page).to have_content(cake.price)
    expect(page).to have_content(cake.gluten_free)

    visit "/bakeries/#{bakery1.id}/pastries"
    expect(page).to have_content(bread.name)
    expect(page).to have_content(bread.price)
    expect(page).to have_content(bread.gluten_free)
  end

  # As a visitor
  # When I visit '/child_table_name'
  # Then I see each Child in the system including the Child's attributes:
  describe "Show child table" do
      it "shows the entire child table with attributes" do
      bakery1 = Bakery.create!(name: "Name 1", rank: 1, open: true)
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
end
