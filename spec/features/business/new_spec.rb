require "rails_helper"

describe "user creates a new business" do
  describe "they link from the business index" do
    describe "they fill in the appropriate fields" do
      it "creates a new business" do
        visit businesses_path
        click_link "New Business"

        expect(current_path).to eq('/businesses/new')

        fill_in "business[name]", with: "Garden Center"
        fill_in "business[rank]", with: 4
        fill_in "business[big_company]", with: true
        click_on "Create Business"
        
        expect(page).to have_content("Garden Center")
      end
    end
  end
end
