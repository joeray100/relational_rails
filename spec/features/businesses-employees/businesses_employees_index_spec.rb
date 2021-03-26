# require 'rails_helper'
# As a visitor
# When I visit '/parents/:parent_id/child_table_name'
# Then I see each Child that is associated with that Parent with each Child's attributes:
#
# describe 'businesses-employees relationship' do
#   it 'displays all employees related to businesses' do
#     business1 = Business.create!(name: "Name 1", rank: 1, big_company: true)
#     bob = business1.employees.create!(name: "Bob", hours_worked: 4, likes_job: true)
#     george = business1.employees.create!(name: "George", hours_worked: 7, likes_job: false)
#
#     visit "/businesses/#{business1.id}/employees"
#     expect(page). to have_content(bob.name)
#     expect(page). to have_content(bob.hours_worked)
#     expect(page). to have_content(bob.likes_job)
#     expect(page). to have_content(george.name)
#     expect(page). to have_content(george.hours_worked)
#     expect(page). to have_content(george.likes_job)
#   end
# end
