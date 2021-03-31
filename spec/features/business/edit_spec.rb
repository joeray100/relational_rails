require "rails_helper"

# Then I see a link to update the parent "Update Parent"
# When I click the link "Update Parent"
# Then I am taken to '/parents/:id/edit' where I  see a form to edit the parent's attributes:
# When I fill out the form with updated information
# And I click the button to submit the form
# Then a `PATCH` request is sent to '/parents/:id',
# the parent's info is updated,
# and I am redirected to the Parent's Show page where I see the parent's updated info
RSpec.describe 'New Bussiness' do
  describe 'As a visitor' do
    describe 'When I visit the businesses index' do
      it 'I can update a business ' do
        yarn = Business.create!(name: 'Yarn boyz', rank: 3, big_company: true)

        visit "/businesses/#{yarn.id}"

        click_link 'Edit Business'

        expect(current_path).to eq("/businesses/#{yarn.id}/edit")

        fill_in 'Name', with: 'Aaron Carter'
        fill_in 'Rank', with: 1
        fill_in 'big_company', with: true
        click_on 'Update'

        expect(current_path).to eq("/businesses/#{yarn.id}")
        expect(page).to have_content('Aaron Carter')
        expect(page).to have_content(1)
        expect(page).to have_content(true)
        expect(page).to_not have_content("Yarn Boyz")
      end
    end
  end
end

RSpec.describe 'Update Bussiness' do
  describe 'As a visitor' do
    describe 'When I visit the businesses index' do
      it 'I can update a business next to its each business name ' do
        yarn = Business.create!(name: 'Yarn boyz', rank: 3, big_company: true)

        visit "/businesses"

        click_link 'Edit'

        expect(current_path).to eq("/businesses/#{yarn.id}/edit")

        fill_in 'Name', with: 'Aaron Carter'
        fill_in 'Rank', with: 1
        fill_in 'big_company', with: true
        click_on 'Update'

        expect(current_path).to eq("/businesses/#{yarn.id}")
        expect(page).to have_content('Aaron Carter')
        expect(page).to have_content(1)
        expect(page).to have_content(true)
        expect(page).to_not have_content("Yarn Boyz")
      end
    end
  end
end
