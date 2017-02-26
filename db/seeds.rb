# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.connection.reset_pk_sequence!('User')
User.delete_all
paul = User.create(first_name: 'Paul', last_name: 'Ramirez', username: 'paul', password: 'paul', email: 'pramirez@uwhealth.org')
bryan = User.create(first_name: 'Bryan ', last_name: 'Ramirez', username: 'bryan', password: 'bryan', email: 'bramirez@uwhealth.org')
arseny = User.create(first_name: 'Arseny ', last_name: 'Semin', username: 'arseny', password: 'arseny', email: 'asemin@uwhealth.org')
elizabeth = User.create(first_name: 'Elizabeth ', last_name: 'Simcock', username: 'elizabeth', password: 'elizabeth', email: 'esimcock@uwhealth.org')

#create roles
ActiveRecord::Base.connection.reset_pk_sequence!('Role')
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

ActiveRecord::Base.connection.reset_pk_sequence!('Store')
Store.delete_all
evp = Store.create(name: 'EVP', location: 'VA Hospital', description: 'EVP (Etes-Vous Prets?!) Coffee is a local, independent & woman-owned business that opened in October of 1997 on Highland Avenue in Madison, Wisconsin.  Over 19 years later, EVP now has 6 vibrant locations & roasts over 30,000 pounds of coffee each year.
Our intention since we opened has been to serve all people beautifully, and in the spirit of kindness and love.  We aim to serve our community with honesty and accountability & to be stewards of our environment through composting and other initiatives.
At EVP, we believe the spirit in which we serve is as important was what we serve. We see that kindness and love are lacking in this world, and our intention is to create a work culture & business that emphasize these ideals.')
barriques = Store.create(name: 'Barriques', location: 'Madison', description: 'Regardless of origin, region, certification or affiliation, every coffee we source has to meet our exacting quality standards first. We distinguish ourselves with a focus on freshness and approachable quality. Our belief is that everyone should have access to great coffee and our 6 thriving cafes in the Madison area owe a large part of their success to the uncompromising view that our customers deserve the best quality for the dollar. We bring this same commitment and enthusiasm to our wholesale clients.')

ActiveRecord::Base.connection.reset_pk_sequence!('Item')
Item.delete_all
tanzanian_peaberry = Item.create(name: 'Coffee', store: evp, brand: 'Tanzanian Peaberry', price:15.00, description: 'A high-octane light roast much sought after by our customers. Grown on the slopes of Mount Kilimanjaro, this coffee is sweetly acidic with wonderful aroma. Wine and fruit overtones.')
 kenyan = Item.create(name: 'Coffee', store: evp, brand: 'Kenyan', price:15.00, description: 'Viewed by many in the coffee industry as the perfect cup. A beautifully balanced dark roast coffee with depth & interesting complexity.')
  costa_rican = Item.create(name: 'Coffee', store: evp, brand: 'Costa Rican', price:15.00, description: 'A medium roast that is bright and pleasantly complex, with a light and fruity finish.')
  peruvian = Item.create(name: 'Coffee', store: evp, brand: 'Peruvian', price:15.00, description: 'A medium roast that has a nice balance in flavors. Smooth, dry finish with a hint of cinnamon.')

  ethiopia_yrgacheffe = Item.create(name: 'Coffee', store: barriques, brand: 'Yrgacheffe Ethopian', price:14.50, description: 'Yrgacheffe, Ethiopia’s most prized coffee, is used to celebrate Ethiopian life’s biggest moments. Prepared from the highest-grown beans grown in the southern mountains along the Great Rift, Yrgacheffe coffees are organically grown, painstakingly hand-picked, fully sun dried and immaculately prepared by washed processing. ')
  nyeri_othaya_peaberry = Item.create(name: 'Coffee', store: barriques, brand: 'Nyeri Othaya Peaberry Kenyan', price:14.50, description: 'A winy, full-bodied and very intense coffee with exceptional bright, clean aroma.')
  monte_crisol = Item.create(name: 'Coffee', store: barriques, brand: 'Tarrazu Monte Crisol Costa Rica', price:14.50, description: 'Tarrazu is Costa Rica\'s best known Specialty coffee region.  It is south of the capital of San Jose in the mountains surrounding  Poas Volcano.  The humid climate, high altitude 4500 – 7000 ft, and rich volcanic soil contribute to produce coffee with such distinctive "taste of place" that the Tarrazu name and area is legally protected, just like a wine appellation.')


ActiveRecord::Base.connection.reset_pk_sequence!('Purchase')
Purchase.delete_all
#bryanPurchase = Purchase.create(item_id: peruvian, location: 'VA Hospital', purchaseDate: DateTime.now)

