require 'rails_helper'
# Then I see a link to delete the parent
# When I click the link "Delete Parent"
# Then a 'DELETE' request is sent to '/parents/:id',
# the parent is deleted, and all child records are deleted
# and I am redirected to the parent index page where I no longer see this parent
RSpec.describe "deletes an existing business" do
  describe "they link from the business show" do
    describe "select the delete link" do
        before :each do
          @business1 = create(:business)
          @business2 = create(:business)
            visit "/businesses/#{@business1.id}"
          end
      it "deletes a business and its employees" do

        click_link "Delete Business"

        expect(current_path).to eq("/businesses")
        expect(page).to_not have_content(@business1.name)
        expect(page).to_not have_content(@business1.rank)
        expect(page).to have_content(@business2.name)
      end
    end
  end
end
