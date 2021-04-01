require 'rails_helper'
# Then I see a link to delete the child "Delete Child"
# When I click the link
# Then a 'DELETE' request is sent to '/child_table_name/:id',
# the child is deleted,
# and I am redirected to the child index page where I no longer see this child
RSpec.describe "deletes an existing pastry" do
  describe "they link from the pastry show" do
    describe "select the delete link" do
      before :each do
        bakery1 = Bakery.create!(name: "Cupcakes", rank: 1, open: true)
        @cake = bakery1.pastries.create!(name: "Chocolate Cake", price: 4, gluten_free: true)
        @bread = bakery1.pastries.create!(name: "Kopf", price: 7, gluten_free: true)
        visit "/pastries/#{@cake.id}"
      it "deletes a pastry" do

        click_link "Delete Pastry"

        expect(current_path).to eq("/pastries")
        expect(page).to_not have_content(@cake.name)
        expect(page).to_not have_content(@cake.price)
        expect(page).to have_content(@bread.name)
        end
      end
    end
  end
end
