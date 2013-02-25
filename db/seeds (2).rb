# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#make description price
Product.create(:make => 'XL 883R Sportster 883R', :description =>
    'The 2013 Harley-Davidson Sportster 883 Roadster XL883R is an incredible ', :price =>
                   '12850.0')
Product.create(:make => 'XL 883L SuperLow ', :description => 'The 2013 Harley-Davidson Sportster
SuperLow XL883L has all the motorcycle features ', :price =>
    '14385.0')
