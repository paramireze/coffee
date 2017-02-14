# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tanzanianPeaberry = Item.create(name: 'Coffee', brand: 'Tanzanian Peaberry', price:15.00, description: 'A high-octane light roast much sought after by our customers. Grown on the slopes of Mount Kilimanjaro, this coffee is sweetly acidic with wonderful aroma. Wine and fruit overtones.')
kenyan = Item.create(name: 'Coffee', brand: 'Kenyan', price:15.00, description: 'Viewed by many in the coffee industry as the perfect cup. A beautifully balanced dark roast coffee with depth & interesting complexity.')
 costaRican = Item.create(name: 'Coffee', brand: 'Costa Rican', price:15.00, description: 'A medium roast that is bright and pleasantly complex, with a light and fruity finish.')
 peruvian = Item.create(name: 'Coffee', brand: 'Peruvian', price:15.00,  manufacturer: 'Organic & Fair Trade', description: 'A medium roast that has a nice balance in flavors. Smooth, dry finish with a hint of cinnamon.')

bryanPurchase = Purchase.create(store: 'EVP', location: 'VA Hospital', purchaseDate: DateTime.now)