require "rails_helper"

  RSpec.describe "they visit /businesses" do
    it "displays all businesses" do
      business_1 = Business.create!(name: "Name 1", rank: 1, big_company: true)
      business_2 = Business.create!(name: "Name 2", rank: 1, big_company: false)

      visit '/businesses'

      expect(page).to have_content(business_1.name)
      expect(page).to have_content(business_2.name)
    end
  end

  # As a visitor
  # When I visit '/parents/:id'
  # Then I see the parent with that id including the parent's attributes:
  # - data from each column that is on the parent table

  describe "business show id" do
    it "shows all parent attributes" do
      business_1 = Business.create!(name: "Name 1", rank: 1, big_company: true)
      business_2 = Business.create!(name: "Name 2", rank: 1, big_company: false)

      visit "/businesses/#{business_1.id}"
      expect(page).to have_content(business_1.name)
      expect(page).to have_content(business_1.rank)
      expect(page).to have_content(business_1.big_company)

      visit "/businesses/#{business_2.id}"
      expect(page).to have_content(business_2.name)
      expect(page).to have_content(business_2.rank)
      expect(page).to have_content(business_2.big_company)
    end
   end
