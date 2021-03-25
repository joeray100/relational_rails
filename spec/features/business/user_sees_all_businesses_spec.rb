require "rails_helper"

describe "user sees all businesses" do
  describe "they visit /businesses" do
    it "displays all businesses" do
      business_1 = Business.create!(name: "Name 1")
      business_2 = Business.create!(name: "Name 2")

      visit '/businesses'

      expect(page).to have_content(business_1.name)
      expect(page).to have_content(business_2.name)
    end
  end
end
