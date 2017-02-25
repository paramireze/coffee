# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
paul = User.create(first_name: 'Paul', last_name: 'Ramirez', username: 'paul', password: 'paul', email: 'pramirez@uwhealth.org')
bryan = User.create(first_name: 'Bryan ', last_name: 'Ramirez', username: 'bryan', password: 'bryan', email: 'bramirez@uwhealth.org')
arseny = User.create(first_name: 'Arseny ', last_name: 'Semin', username: 'arseny', password: 'arseny', email: 'asemin@uwhealth.org')
elizabeth = User.create(first_name: 'Elizabeth ', last_name: 'Simcock', username: 'elizabeth', password: 'elizabeth', email: 'esimcock@uwhealth.org')

#create roles
Role.delete_all
user = Role.create(name:'User')
admin = Role.create(name:'Admin')

# assign roles
paul.roles << admin
bryan.roles << admin
arseny.roles << admin
elizabeth.roles << admin

paul.save
bryan.save
arseny.save
elizabeth.save

evp = Store.create(name: 'EVP', location: 'VA Hospital', description: 'They have the stuff that makes me go WEEEE')
cargo_coffee = Store.create(name: 'Cargo Coffee', location: 'East Washington', description: 'This is just an example')

tanzanian_peaberry = Item.create(name: 'Coffee', store_id: evp.id, brand: 'Tanzanian Peaberry', price:15.00, description: 'A high-octane light roast much sought after by our customers. Grown on the slopes of Mount Kilimanjaro, this coffee is sweetly acidic with wonderful aroma. Wine and fruit overtones.')
kenyan = Item.create(name: 'Coffee', store_id: cargo_coffee.id, brand: 'Kenyan', price:15.00, description: 'Viewed by many in the coffee industry as the perfect cup. A beautifully balanced dark roast coffee with depth & interesting complexity.')
 costa_rican = Item.create(name: 'Coffee', store_id: evp.id, brand: 'Costa Rican', price:15.00, description: 'A medium roast that is bright and pleasantly complex, with a light and fruity finish.')
 peruvian = Item.create(name: 'Coffee', store_id: cargo_coffee.id, brand: 'Peruvian', price:15.00, description: 'A medium roast that has a nice balance in flavors. Smooth, dry finish with a hint of cinnamon.')

bryanPurchase = Purchase.create(location: 'VA Hospital', purchaseDate: DateTime.now)

ItemPurchase.create(purchase_id: bryanPurchase, item_id: tanzanian_peaberry)