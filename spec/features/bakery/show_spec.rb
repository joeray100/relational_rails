require "rails_helper"
# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes:
# - data from each column that is on the parent table

describe "bakeries show id" do
  it "shows all parent attributes" do
    bakery_1 = Bakery.create!(name: "Name 1", rank: 1, open: true)
    bakery_2 = Bakery.create!(name: "Name 2", rank: 2, open: true)
    bakery_3 = Bakery.create!(name: "Name 3", rank: 3, open: false)

    visit "/bakeries/#{bakery_1.id}"
    expect(page).to have_content(bakery_1.name)
    expect(page).to have_content(bakery_1.rank)
    expect(page).to have_content(bakery_1.open)

    visit "/bakeries/#{bakery_2.id}"
    expect(page).to have_content(bakery_2.name)
    expect(page).to have_content(bakery_2.rank)
    expect(page).to have_content(bakery_2.open)
 end
end
