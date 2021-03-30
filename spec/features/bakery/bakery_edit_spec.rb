require "rails_helper"

# Then I see a link to update the parent "Update Parent"
# When I click the link "Update Parent"
# Then I am taken to '/parents/:id/edit' where I  see a form to edit the parent's attributes:
# When I fill out the form with updated information
# And I click the button to submit the form
# Then a `PATCH` request is sent to '/parents/:id',
# the parent's info is updated,
# and I am redirected to the Parent's Show page where I see the parent's updated info
RSpec.describe 'New Bakery' do
  describe 'As a visitor' do
    describe 'When I visit the bakeries index' do
      it 'I can update a bakery' do
        candy = Bakery.create!(name: 'Crazy Candy', rank: 3, open: true)

        visit "/bakeries/#{candy.id}"

        click_link 'Edit Bakery'

        expect(current_path).to eq("/bakeries/#{candy.id}/edit")

        fill_in 'Name', with: 'No Candy'
        fill_in 'Rank', with: 2
        fill_in 'Open', with: false
        click_on 'Update'

        expect(current_path).to eq("/bakeries/#{candy.id}")
        expect(page).to have_content('No Candy')
        expect(page).to have_content(2)
        expect(page).to have_content(false)
      end
    end
  end
end
