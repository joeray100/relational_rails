require "rails_helper"

describe "user creates a new bakery" do
  describe "they link from the bakeries index" do
    describe "they fill in the appropriate fields" do
      it "creates a new bakery" do
        visit bakeries_path
        click_link "New Bakery"

        expect(current_path).to eq('/bakeries/new')

        fill_in "bakery[name]", with: "Brians Donuts"
        fill_in "bakery[rank]", with: 4
        fill_in "bakery[open]", with: false

        click_on "Create Bakery"

        expect(page).to have_content("Brians Donuts")

      end
    end
  end
end
