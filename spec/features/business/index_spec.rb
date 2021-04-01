require "rails_helper"

  describe "they visit businesses" do
    before :each do
      @business1 = create(:business)
      @business2 = create(:business)
        visit businesses_path
      end
    it "displays all businesses" do


      expect(page).to have_content(@business1.name)
      expect(page).to have_content(@business2.name)
    end


  describe "they visit businesses" do
    it "displays businesses by created_at" do

      expect(page).to have_content(@business1.name)
      expect(page).to have_content(@business1.created_at)
      expect(page).to have_content(@business2.name)
      expect(page).to have_content(@business2.created_at)
    end
  end

  it "returns businesses in the order they were created at" do

    visit '/businesses'
    business_1 = Business.create!(name: "Name 1", rank: 1, big_company: false)
    business_2 = Business.create!(name: "Name 2", rank: 1, big_company: true)
    all = Business.all

    assert_operator all.index(business_2), :>, all.index(business_1)
  end

  it "Shows a link at the top of the page that takes me to a child index" do

    visit "/businesses"
    expect(page).to have_link("Employees")
    expect(page).to have_link("Pastries")
    expect(page).to have_link("Bakeries")
  end
end
