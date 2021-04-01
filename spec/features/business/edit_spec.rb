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
      it 'It can update a business ' do
        @business1 = Business.create!(name: '@business1', rank: 3, big_company: true)

        visit "/businesses/#{@business1.id}"

        click_link "Edit Business"

        expect(current_path).to eq("/businesses/#{@business1.id}/edit")

        fill_in 'Name', with: 'Aaron Carter'
        fill_in 'Rank', with: 1
        fill_in 'big_company', with: true
        click_on 'Update'

        expect(current_path).to eq("/businesses/#{@business1.id}")
        expect(page).to have_content('Aaron Carter')
        expect(page).to have_content(1)
        expect(page).to have_content(true)
      end
    end
  end
end

describe 'When I visit the businesses index' do
  before :each do
    @business1 = create(:business)
    visit businesses_path
    it 'It can update a business ' do
      describe 'Update Bussiness' do
        describe 'As a visitor' do
          describe ' It update a business next to its each business name'  do
            click_link 'Edit'

            expect(current_path).to eq("/businesses/#{@business1.id}/edit")

            fill_in 'Name', with: 'Aaron Carter'
            fill_in 'Rank', with: 1
            fill_in 'big_company', with: true
            click_on 'Update'

            expect(current_path).to eq("/businesses/#{@business1.id}")
            expect(page).to have_content('Aaron Carter')
            expect(page).to have_content(1)
            expect(page).to have_content(true)
            expect(page).to_not have_content("Yarn Boyz")
          end
        end
      end
    end
  end
end
