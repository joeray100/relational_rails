require "rails_helper"


# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system
  RSpec.describe "bakeries index" do
    it "displays all bakeries" do
      bakery_1 = Bakery.create!(name: "Name 1")
      bakery_2 = Bakery.create!(name: "Name 2")
      bakery_3 = Bakery.create!(name: "Name 3")

      visit '/bakeries'

      expect(page).to have_content(bakery_1.name)
      expect(page).to have_content(bakery_2.name)
      expect(page).to have_content(bakery_3.name)
    end
  end
