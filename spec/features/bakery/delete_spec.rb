require 'rails_helper'
# Then I see a link to delete the parent
# When I click the link "Delete Parent"
# Then a 'DELETE' request is sent to '/parents/:id',
# the parent is deleted, and all child records are deleted
# and I am redirected to the parent index page where I no longer see this parent
RSpec.describe "deletes an existing bakery" do
  describe "they link from the bakery index" do
    describe "select the delete link" do
        before :each do
          @bakery1 = Bakery.create!(name: "Donut Shop", rank: 1, open: true)
          @bakery2 = Bakery.create!(name: "Bagel Shop", rank: 7, open: true)
            visit "/bakeries/#{@bakery2.id}"
          end
      it "deletes a bakery and its pastries" do

        click_link  "Delete Bakery"

        expect(current_path).to eq("/bakeries")
        expect(page).to_not have_content(@bakery2.name)
        expect(page).to have_content(@bakery1.name)
      end
    end
  end
end
