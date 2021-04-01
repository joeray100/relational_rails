require 'rails_helper'
# Then I see a link to delete the child "Delete Child"
# When I click the link
# Then a 'DELETE' request is sent to '/child_table_name/:id',
# the child is deleted,
# and I am redirected to the child index page where I no longer see this child
RSpec.describe "deletes an existing employee" do
  describe "they link from the employee show" do
    describe "select the delete link" do
      before :each do
        @business1 = create(:business)
        @business2 = create(:business)
        @employee1 = create(:employee, business_id: @business1.id, likes_job: true)
        @employee2 = create(:employee, business_id: @business2.id, likes_job: true)
        visit "/employees/#{@employee1.id}"
        it "deletes an employee" do

        click_link "Delete Employee"

        expect(current_path).to eq("/employees")
        expect(page).to_not have_content(@employee1.name)
        expect(page).to_not have_content(@employee1.hours_worked)
        expect(page).to have_content(@employee2.name)
        end
      end
    end
  end
end
