# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::base.connection.reset_pk_sequence!('user')
User.delete_all
paul = User.create(first_name: 'paul', last_name: 'ramirez', username: 'paul', password: 'paul', email: 'pramirez@uwhealth.org')
bryan = User.create(first_name: 'bryan ', last_name: 'ramirez', username: 'bryan', password: 'bryan', email: 'bramirez@uwhealth.org')
arseny = User.create(first_name: 'arseny ', last_name: 'semin', username: 'arseny', password: 'arseny', email: 'asemin@uwhealth.org')
elizabeth = User.create(first_name: 'elizabeth ', last_name: 'simcock', username: 'elizabeth', password: 'elizabeth', email: 'esimcock@uwhealth.org')

#create roles
ActiveRecord::base.connection.reset_pk_sequence!('role')
Role.delete_all
user = Role.create(name:'user')
admin = Role.create(name:'admin')

# assign roles
paul.roles << admin
bryan.roles << admin
arseny.roles << admin
elizabeth.roles << admin

paul.save
bryan.save
arseny.save
elizabeth.save

ActiveRecord::base.connection.reset_pk_sequence!('store')
Store.delete_all
evp = Store.create(name: 'evp', location: 'va hospital', description: 'evp (etes-vous prets?!) coffee is a local, independent & woman-owned business that opened in october of 1997 on highland avenue in madison, wisconsin.  over 19 years later, evp now has 6 vibrant locations & roasts over 30,000 pounds of coffee each year.
our intention since we opened has been to serve all people beautifully, and in the spirit of kindness and love.  we aim to serve our community with honesty and accountability & to be stewards of our environment through composting and other initiatives.
at evp, we believe the spirit in which we serve is as important was what we serve. we see that kindness and love are lacking in this world, and our intention is to create a work culture & business that emphasize these ideals.')
barriques = Store.create(name: 'barriques', location: 'madison', description: 'regardless of origin, region, certification or affiliation, every coffee we source has to meet our exacting quality standards first. we distinguish ourselves with a focus on freshness and approachable quality. our belief is that everyone should have access to great coffee and our 6 thriving cafes in the madison area owe a large part of their success to the uncompromising view that our customers deserve the best quality for the dollar. we bring this same commitment and enthusiasm to our wholesale clients.')

ActiveRecord::base.connection.reset_pk_sequence!('item')
Item.delete_all
tanzanian_peaberry = Item.create(name: 'coffee', store: evp, brand: 'tanzanian peaberry', price:15.00, description: 'a high-octane light roast much sought after by our customers. grown on the slopes of mount kilimanjaro, this coffee is sweetly acidic with wonderful aroma. wine and fruit overtones.')
 kenyan = Item.create(name: 'coffee', store: evp, brand: 'kenyan', price:15.00, description: 'viewed by many in the coffee industry as the perfect cup. a beautifully balanced dark roast coffee with depth & interesting complexity.')
  costa_rican = Item.create(name: 'coffee', store: evp, brand: 'costa rican', price:15.00, description: 'a medium roast that is bright and pleasantly complex, with a light and fruity finish.')
  peruvian = Item.create(name: 'coffee', store: evp, brand: 'peruvian', price:15.00, description: 'a medium roast that has a nice balance in flavors. smooth, dry finish with a hint of cinnamon.')

  ethiopia_yrgacheffe = Item.create(name: 'coffee', store: barriques, brand: 'yrgacheffe ethopian', price:14.50, description: 'yrgacheffe, ethiopia’s most prized coffee, is used to celebrate ethiopian life’s biggest moments. prepared from the highest-grown beans grown in the southern mountains along the great rift, yrgacheffe coffees are organically grown, painstakingly hand-picked, fully sun dried and immaculately prepared by washed processing. ')
  nyeri_othaya_peaberry = Item.create(name: 'coffee', store: barriques, brand: 'nyeri othaya peaberry kenyan', price:14.50, description: 'a winy, full-bodied and very intense coffee with exceptional bright, clean aroma.')
  monte_crisol = Item.create(name: 'coffee', store: barriques, brand: 'tarrazu monte crisol costa rica', price:14.50, description: 'tarrazu is costa rica\'s best known specialty coffee region.  it is south of the capital of san jose in the mountains surrounding  poas volcano.  the humid climate, high altitude 4500 – 7000 ft, and rich volcanic soil contribute to produce coffee with such distinctive "taste of place" that the tarrazu name and area is legally protected, just like a wine appellation.')


ActiveRecord::base.connection.reset_pk_sequence!('purchase')
Purchase.delete_all
bryanPurchase = Purchase.create(item_id: peruvian, location: 'VA Hospital', purchaseDate: DateTime.now)

