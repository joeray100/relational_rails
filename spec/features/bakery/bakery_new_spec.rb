
  RSpec.describe 'New Bakery' do
    describe 'As a visitor' do
      describe 'When I visit the new new bakery form by clicking a link on the index' do
        it 'I can create a new bakery' do
          visit '/bakeries'

          click_link 'New Bakery'

          expect(current_path).to eq('/bakeries/new')

          fill_in 'Name', with: 'Jamisons Donuts'
          fill_in 'Rank', with: 7
          fill_in 'Open', with: true
          click_on 'Create Bakery'

          expect(current_path).to eq("/bakeries")
          expect(page).to have_content('Jamisons Donuts')
      end
    end
  end
end
