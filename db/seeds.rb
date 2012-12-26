# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Faiz = Patient.find_or_create_by_phone(first_name:"Faiz", last_name:"Abbasi", dob:"April 7th, 1990", address:"38 Monte Vista Ave, Atherton, CA 94027", phone:"650-353-0755")
Mike = Patient.find_or_create_by_phone(first_name:"Mike", last_name:"Wang", dob:"March 12th, 1990", address:"40 Monte Vista Ave, Atherton, CA 94027", phone:"650-555-1930")
Sanchez = Patient.find_or_create_by_phone(first_name:"Yueran", last_name:"Yuan", dob:"April 7th, 1990", address:"50 Monte Vista Ave, Atherton, CA 94027", phone:"650-555-0890")
Chris = Patient.find_or_create_by_phone(first_name:"Chris", last_name:"Reid", dob:"April 7th, 1990", address:"65 Monte Vista Ave, Atherton, CA 94027", phone:"650-555-1250")