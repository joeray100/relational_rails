require "rails_helper"

# Then I see a link to update the parent "Update Parent"
# When I click the link "Update Parent"
# Then I am taken to '/parents/:id/edit' where I  see a form to edit the parent's attributes:
# When I fill out the form with updated information
# And I click the button to submit the form
# Then a `PATCH` request is sent to '/parents/:id',
# the parent's info is updated,
# and I am redirected to the Parent's Show page where I see the parent's updated info
describe "user updates an existing bakery" do
  describe "they link from the bakeries/:id index" do
    describe "they fill in the appropriate fields" do
      it "updates a bakery" do
        @stellas = Bakery.create!(name: "Stella's Saltwater Taffy", rank: 8, open: true)
        visit "/bakeries/#{@stellas.id}/"
        click_link "Update Bakery"

        expect(current_path).to eq("/bakeries/#{@stellas.id}/edit")

        fill_in "bakery[name]", with: "Stellas Candy"
        # fill_in "bakery[rank]", with:
        # fill_in "bakery[open]", with:
        click_on "Update Bakery"


        expect(page).to have_content("Stellas Candy")
        expect(page).to_not have_content("Stella's Saltwater Taffy")
      end
    end
  end
end
