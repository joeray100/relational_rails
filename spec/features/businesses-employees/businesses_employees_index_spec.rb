describe "user creates a new employee" do
  describe "they link from the businesses index" do
    describe "they fill in the appropriate fields" do
      it "creates a new employee for a specific business" do
        @business = Business.create!(name: "Name 1", rank: 1, big_company: true)
        visit "/businesses/#{@business.id}/employees"
        click_link "New Employee"

        expect(current_path).to eq("/businesses/#{@business.id}/employees/new")

        fill_in "name", with: "Richard"
        fill_in "hours_worked", with: 3
        fill_in "likes_job", with: true

        click_on "Create New Employee"

        expect(page).to have_content("Richard")
        expect(page).to have_content(3)
        expect(page).to have_content(true)
      end
    end
  end

  # As a visitor
  # When I visit the Parent's children Index Page
  # Then I see a link to sort children in alphabetical order
  # When I click on the link
  # I'm taken back to the Parent's children Index Page where I see all of the parent's children in alphabetical order
  RSpec.describe 'Update Business' do
    describe 'As a visitor' do
      describe 'When I visit the business index' do
        it 'I can sort a bakery' do
          business = Business.create!(name: "Name 1", rank: 1, big_company: true)
          joe = business.employees.create!(name: "Joe", hours_worked: 4, likes_job: true)
          olivia = business.employees.create!(name: "Olivia", hours_worked: 7, likes_job: true)

          visit "/businesses/#{business.id}/employees"

          click_link 'sort'

          expect(current_path).to eq("/businesses/#{business.id}/employees")


          expect(current_path).to eq("/businesses/#{business.id}/employees")
          expect(page).to have_content(joe.name)
          expect(page).to have_content(olivia.name)
        end
      end
    end
  end
end
