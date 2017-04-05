# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.connection.reset_pk_sequence!('Buyer')
Buyer.delete_all

ActiveRecord::Base.connection.reset_pk_sequence!('Purchase')
Purchase.delete_all

ActiveRecord::Base.connection.reset_pk_sequence!('User')
User.delete_all
paul      = User.create(first_name: 'paul', last_name: 'ramirez', image_url: 'https://snag.gy/zCbYf9.jpg', description: 'enjoys bottling up years of rage. Also fascinated with bikes.', username: 'paul', password: 'paul', email: 'pramirez@uwhealth.org')
bryan     = User.create(first_name: 'bryan ', last_name: 'ramirez', image_url: 'https://snag.gy/G85muK.jpg', description: 'A Caffeine dependent life-form who often has disney songs stuck in his head.', username: 'bryan', password: 'bryan', email: 'bramirez@uwhealth.org')
arseny    = User.create(first_name: 'arseny ', last_name: 'semin', image_url: 'https://snag.gy/yaO3EZ.jpg', description: 'rarely combs his hair even when prompted to do so on bus or otherwise', username: 'arseny', password: 'arseny', email: 'asemin@uwhealth.org')
elizabeth = User.create(first_name: 'elizabeth ', last_name: 'simcock', image_url: 'https://snag.gy/inXmJZ.jpg', description: 'really enjoys legos', username: 'elizabeth', password: 'elizabeth', email: 'esimcock@uwhealth.org')

#create roles
ActiveRecord::Base.connection.reset_pk_sequence!('Role')
Role.delete_all
user = Role.create(name:'user')
admin = Role.create(name:'admin')

# assign roles
ActiveRecord::Base.connection.reset_pk_sequence!('RoleUser')
RoleUser.delete_all

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
evp = Store.create(name: 'evp', location: 'va hospital', description: 'evp (etes-vous prets?!) coffee is a local, independent & woman-owned business that opened in october of 1997 on highland avenue in madison, wisconsin.  over 19 years later, evp now has 6 vibrant locations & roasts over 30,000 pounds of coffee each year.
our intention since we opened has been to serve all people beautifully, and in the spirit of kindness and love.  we aim to serve our community with honesty and accountability & to be stewards of our environment through composting and other initiatives.
at evp, we believe the spirit in which we serve is as important was what we serve. we see that kindness and love are lacking in this world, and our intention is to create a work culture & business that emphasize these ideals.', image_url: 'http://evpcof.fatcow.com/store/media/evp_coffee_logo.jpg')
#barriques = Store.create(name: 'barriques', location: 'madison', description: 'regardless of origin, region, certification or affiliation, every coffee we source has to meet our exacting quality standards first. we distinguish ourselves with a focus on freshness and approachable quality. our belief is that everyone should have access to great coffee and our 6 thriving cafes in the madison area owe a large part of their success to the uncompromising view that our customers deserve the best quality for the dollar. we bring this same commitment and enthusiasm to our wholesale clients.')

ActiveRecord::Base.connection.reset_pk_sequence!('ItemType')
ItemType.delete_all

coffee = ItemType.create(name: 'Coffee', image_url: 'http://www.webstaurantstore.com/images/products/extra_large/45595/637734.jpg')


ActiveRecord::Base.connection.reset_pk_sequence!('Item')
Item.delete_all
ethopian_sidano = Item.create(item_type: coffee, store: evp, brand: 'Ethopian Sidano', price: 15.00, description: 'Sweet citruis aromatics and pleasing maple syrup-like body. The wild sweet lemon and floral tones round out into a smooth, clean finish.', image_url: 'https://sc01.alicdn.com/kf/HTB1BhUyMVXXXXaNaXXXq6xXFXXXV/Food-Packaging-Printing-Flat-Bottom-Resealable-coffee.jpg' )
congo           = Item.create(item_type: coffee, store: evp, brand: 'Congo', price: 15.00, description: 'Light roast coffee that has recently been selling at EVP' )
tanzanianPeaberry = Item.create(item_type: coffee, store: evp, brand: 'Tanzanian Peaberry', price: 15.00, description: 'A high-octane light roast much sought after by our customers. Grown on the slopes of Mount Kilimanjaro, this coffee is sweetly acidic with wonderful aroma. Wine and fruit overtones.', image_url: 'http://cdn.shopify.com/s/files/1/0658/3597/products/indian-monsooned-malabar-2_large.jpg?v=1426559070' )
ethopianPurchase = Purchase.create(item: ethopian_sidano, purchase_date: '2017-03-09 13:30:00', deleted: 'f' )
congoPurchase  = Purchase.create(item: congo, purchase_date: '2017-03-19 10:30:00', deleted: 'f' )
tanzanianPeaberryPurchase  = Purchase.create(item: tanzanianPeaberry, purchase_date: '2017-03-31 10:30:00', deleted: 'f' )

Buyer.create(purchase: ethopianPurchase, user: bryan)
Buyer.create(purchase: congoPurchase, user: paul)
Buyer.create(purchase: tanzanianPeaberryPurchase, user: bryan)

ActiveRecord::Base.connection.reset_pk_sequence!('ImageType')
ImageType.delete_all
backgroundImage1 = ImageType.create(name: 'Background')
avatarImage1 = ImageType.create(name: 'Avatar')
productImage1 = ImageType.create(name: 'Product')

ActiveRecord::Base.connection.reset_pk_sequence!('Image')
Image.delete_all
Image.create(image_type: backgroundImage1, image_url: 'https://images3.alphacoders.com/621/621682.jpg', description: 'background image')
Image.create(image_type: backgroundImage1, image_url: 'http://icanbecreative.com/resources/files/articles/40-high-resolution-wallpapers-for-minimalist-lovers/sources/everest-minimalist-wallpaper-blue.png', description: 'background image')
Image.create(image_type: backgroundImage1, image_url: 'http://www.androidguys.com/wp-content/uploads/2016/05/Poly-Lakeside.jpg', description: 'background image')
Image.create(image_type: backgroundImage1, image_url: 'http://i.imgur.com/3Zk4aNH.jpg', description: 'background image')
Image.create(image_type: backgroundImage1, image_url: 'http://cdn-media-1.lifehack.org/wp-content/files/2013/04/94.jpg', description: 'background image')
Image.create(image_type: backgroundImage1, image_url: 'http://cdn-media-1.lifehack.org/wp-content/files/2013/04/9.jpg', description: 'background image')
Image.create(image_type: backgroundImage1, image_url: 'http://eskipaper.com/images/minimalist-wallpaper-17.jpg', description: 'background image')
Image.create(image_type: backgroundImage1, image_url: 'http://i.imgur.com/MIRCCsJ.jpg', description: 'background image')






















































































































































































































































































































































































































































































































































































































