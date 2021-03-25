Bakery.destory_all
Business.destory_all
Employee.destory_all
Pastry.destroy_all

sherry = Bakery.create!(name: "Sherry's Tasty Desserts", rank: 1, open: true)
joe    = Bakery.create!(name: "Joe's Patissiere" rank: 2, open: false)
goody  = Bakery.create!(name: "Gluten Free Goodies", rank: 3, open: false)
bread  = Bakery.create!(name: "Knead Bread",  rank: 4, open: true )

sherry.pastries.create!(name: "Red Velvet Cupcake", price: 4, gluten_free: false)
sherry.pastries.create!(name: "Pistachio Baklava", price: 5, gluten_free: false)
sherry.pastries.create!(name: "Chocolate Flourless Cake", price: 7, gluten_free: true)

joe.pastries.create!(name: "Criossant", price: 9,  gluten_free: false)
joe.pastries.create!(name: "Canneles",  price: 10, gluten_free: false)
joe.pastries.create!(name: "Macroons",  price: 12, gluten_free: true)

goody.pastries.create!(name: "Black and White Halava", price: 7, gluten_free:true)
goody.pastries.create!(name: "Chocolate Avocado Mousse", price: 9, gluten_free:true)
goody.pastries.create!(name: "Creme Brulee", price: 11, gluten_free:true)

bread.pastries.create!(name: "Sourdough",price: 7, gluten_free: false)
bread.pastries.create!(name: "Brioche", price: 5, gluten_free: false)
bread.pastries.create!(name: "Assorted Bagels", price: 3, gluten_free:false)

yeet = Business.create!(name: "Yeet Co.", rank: 1, big_company: true)
sea  = Business.create!(name: "Sea Shanty Bangers", rank: 2, big_company: false)

yeet.employees.create!(name: "Ruth Bader Ginesburg", hours_worked: 8, likes_job: true)
yeet.employees.create!(name: "The Notorious BIG", hours_worked: 8, likes_job: true)
yeet.employees.create!(name: "Snoop Dogg", hours_worked: 8, likes_job: true)

sea.employees.create!(name: "Hamish McDonald", hours_worked: 12, likes_job: true)
sea.employees.create!(name: "Angus McLeod", hours_worked: 4, likes_job: false)
sea.employees.create!(name: "Cameron Campbell", hours_worked: 5, likes_job: false)
