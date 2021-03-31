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
end
