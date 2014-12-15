# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.find_or_create_by(name: "Apartments")
Category.find_or_create_by(name: "Houses")
Category.find_or_create_by(name: "Commercial Properties")
Category.find_or_create_by(name: "Land")
Category.find_or_create_by(name: "Rooms")
Category.find_or_create_by(name: "New Properties")

Type.find_or_create_by(name: "Condo / Services residence / Penthouse / Townhouse", category_id: 1)
Type.find_or_create_by(name: "Apartment / Flat", category_id: 1)
Type.find_or_create_by(name: "Others", category_id: 1)

Type.find_or_create_by(name: "Bungalow / Villa / Cluster houses", category_id: 2)
Type.find_or_create_by(name: "Single storey", category_id: 2)
Type.find_or_create_by(name: "Double storey", category_id: 2)
Type.find_or_create_by(name: "Two and half storey", category_id: 2)
Type.find_or_create_by(name: "Triple storey", category_id: 2)
Type.find_or_create_by(name: "Semi detached", category_id: 2)
Type.find_or_create_by(name: "Others", category_id: 2)

Type.find_or_create_by(name: "Office space", category_id: 3)
Type.find_or_create_by(name: "Shop lot", category_id: 3)
Type.find_or_create_by(name: "Warehouse / Factory", category_id: 3)
Type.find_or_create_by(name: "Others", category_id: 3)

Type.find_or_create_by(name: "Residential", category_id: 4)
Type.find_or_create_by(name: "Commercial", category_id: 4)
Type.find_or_create_by(name: "Industrial", category_id: 4)
Type.find_or_create_by(name: "Agricultural", category_id: 4)
Type.find_or_create_by(name: "Mixed development", category_id: 4)
Type.find_or_create_by(name: "Others", category_id: 4)

Type.find_or_create_by(name: "Condo / Services residence / Penthouse / Townhouse", category_id: 5)
Type.find_or_create_by(name: "Apartment / Flat", category_id: 5)
Type.find_or_create_by(name: "Houses", category_id: 5)
Type.find_or_create_by(name: "Shoplot", category_id: 5)
Type.find_or_create_by(name: "Sharing a house / Flat", category_id: 5)
Type.find_or_create_by(name: "Others", category_id: 5)

Type.find_or_create_by(name: "Apartment / Flat", category_id: 6)
Type.find_or_create_by(name: "Bungalow / Villa / Cluster houses", category_id: 6)
Type.find_or_create_by(name: "Condo / Services residence / Penthouse / Townhouse", category_id: 6)
Type.find_or_create_by(name: "Single storey", category_id: 6)
Type.find_or_create_by(name: "Double storey", category_id: 6)
Type.find_or_create_by(name: "Two and half storey", category_id: 6)
Type.find_or_create_by(name: "Triple storey", category_id: 6)
Type.find_or_create_by(name: "Semi detached", category_id: 6)
Type.find_or_create_by(name: "Office space", category_id: 6)
Type.find_or_create_by(name: "Shoplot", category_id: 6)
Type.find_or_create_by(name: "Warehouse / Factory", category_id: 6)
Type.find_or_create_by(name: "Others", category_id: 6)