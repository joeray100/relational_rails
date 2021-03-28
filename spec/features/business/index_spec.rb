require "rails_helper"

describe "they visit /businesses" do
  it "displays all businesses" do
    business_1 = Business.create!(name: "Name 1", rank: 1, big_company: true)
    business_2 = Business.create!(name: "Name 2", rank: 1, big_company: false)

    visit '/businesses'

    expect(page).to have_content(business_1.name)
    expect(page).to have_content(business_2.name)
  end
end

describe "they visit /businesses" do
  it "displays businesses by created_at" do
    business_1 = Business.create!(name: "Name 1", rank: 1, big_company: true)
    business_2 = Business.create!(name: "Name 2", rank: 1, big_company: false)

    visit '/businesses'

    expect(page).to have_content(business_1.name)
    expect(page).to have_content(business_2.name)
    expect(page).to have_content(business_1.created_at)
    expect(page).to have_content(business_2.created_at)
  end

  it "Shows a link at the top of the page that takes me to a child index" do
    
    visit "/businesses"
    expect(page).to have_link("Employees")
    expect(page).to have_link("Pastries")
    expect(page).to have_link("Bakeries")
  end
end
