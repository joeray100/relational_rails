require "rails_helper"

describe "user creates a new bakery" do
  describe "they link from the bakeries index" do
    describe "they fill in the appropriate fields" do
      it "creates a new bakery" do
        visit bakeries_path
        click_link "New Bakery"

        expect(current_path).to eq('/bakeries/new')

        fill_in "bakery[name]", with: "New Name"
        fill_in "bakery[rank]", with: 8
        fill_in "bakery[open]", with: true
        click_on "Create Bakery"


        expect(page).to have_content("New Name")
        expect(page).to have_content(8)
        expect(page).to have_content(true)
      end
    end
  end
end
