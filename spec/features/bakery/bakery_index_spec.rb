require "rails_helper"

# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system

  describe "bakeries index" do
    before :each do
      @bakery_1 = Bakery.create!(name: "Olivia's Sweet Shoppe", rank: 1, open: true)
      @bakery_2 = Bakery.create!(name: "Grinch's Kitnip", rank: 2, open: true)
      @all = Bakery.all
      visit bakeries_path
    end

    it "displays all bakeries" do

      expect(page).to have_content(@bakery_1.name)
      expect(page).to have_content(@bakery_2.name)
    end

# When I visit the parent index,
# I see that records are ordered by most recently created first
# And next to each of the records I see when it was created
it "returns bakeries in the order they were created at" do
   visit '/bakeries'

   assert_operator @all.index(@bakery_2), :>, @all.index(@bakery_1)
  end

  it "Shows a link at the top of the page that takes me to a child index" do

    visit "/bakeries"
    expect(page).to have_link("Businesses")
    expect(page).to have_link("Pastries")
    expect(page).to have_link("Employees")
  end
end
