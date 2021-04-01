require 'rails_helper'

# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes:
# - data from each column that is on the parent table

describe "business show id" do
  before :each do
    @business1 = create(:business)
    @business2 = create(:business)
      visit businesses_path
    end

  it "shows all parent attributes" do
    visit "/businesses/#{@business1.id}"
    expect(page).to have_content(@business1.name)
    expect(page).to have_content(@business1.rank)
    expect(page).to have_content(@business1.big_company)

    visit "/businesses/#{@business2.id}"
    expect(page).to have_content(@business2.name)
    expect(page).to have_content(@business2.rank)
    expect(page).to have_content(@business2.big_company)
  end
 end
