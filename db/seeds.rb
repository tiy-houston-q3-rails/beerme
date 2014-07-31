# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Brewery.destroy_all
Beer.destroy_all

sta = Brewery.create! name: "St. Arnold", location: "2000 Lyons Ave, Houston, TX 77020"
kb = Brewery.create! name: "Karbach", location: "2032 Karbach St, Houston, TX 77092"
rc = Brewery.create! name: "Ranger Creek", location: "	4834 Whirlwind St, San Antonio, TX 78217"
g = Brewery.create! name: "Guinness", location: "Dublin, Ireland"
hg = Brewery.create! name: "Hops and Grain", location: "507 Calles St #101, Austin, TX 78702"
ab = Brewery.create! name: "Abita", location: "PO Box 1510, Abita Springs, LA 70420"

Beer.create! brewery: sta, name: "Santo", abv: 4.7, style: "dark kolsch", photo: "http://www.saintarnold.com/images/beer/photo/photo_santo.jpg"
Beer.create! brewery: kb, name: "Weisse Versa", abv: 5.3, style: "hefeweizen", photo: "http://www.brigadoonbrewery.com/BeerPilgrimage/Karbach/images/Karbach-WeisseVersaWheatAle.jpg"
Beer.create! brewery: rc, name: "OPA", abv: 5.8, style: "ale", photo:  "http://www.drinkrangercreek.com/wp-content/uploads/2012/01/opa_pageright2.jpg"
