# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"


puts "Cleaning database"
JamSession.destroy_all
User.destroy_all
puts 'Creating 2 fake users...'
file1 = URI.open("https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
user1 = User.create(first_name: "Raquel", last_name: "nieuwenhuis", phone_number: "0686166366", email: "lauravannieuwland@gmail.com", password: "123456" )
user1.profile_image.attach(io: file1, filename: "user1.png", content_type: 'image/png')

file2 = URI.open("https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80")
user2 = User.create(first_name: "Raquel", last_name: "Tessarollo", description: "I am interested in learning different music instruments",
phone_number: "0655443567", email: "tessarollo.raquel@gmail.com", password: "678900")
user2.profile_image.attach(io:file2, filename:"user2.png", content_type: 'image/png')

# file3 = URI.open("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80")
# user3 =User.create(first_name: "Roos", last_name: "nieuwland", description: "I am music teacher, like to share my passion with others",
# phone_number: "0655991124", email: "ro@gmail.com", password: "111111")
# user3.profile_image.attach(io:file3, filename:"user3.png", content_type: 'image/png')


# file4 = URI.open("https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80")
# user4 = User.create(first_name: "carmen", last_name: "pustjens", description: "owner of music instruments store",
# phone_number: "0686166366", email: "coco@gmail.com", password: "222222" )
# user4.profile_image.attach(io:file4, filename:"user4.png", content_type: 'image/png')

puts 'Creating 4 fake jamsessions...'
filex = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598518875/drum_2_zm3fkc.jpg")
jamsession1  = JamSession.create(title: "Jamsession One whoop whoop", starts_at: 26-02-2020, ends_at: 26-02-2020,
location: "Haparandaweg 720 Amsterdam", user: user1, max_capacity: 20, status: "not fully booked", description: "Wild jamsession in Westerpark", lat: "", lng: "")
jamsession1.image.attach(io:filex, filename:"jamsession1.png", content_type: 'image/png')

filey = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598518874/eletric_guitar_elpgtc.jpg")
jamsession2  = JamSession.create(title: "Jamsession One whoop whoop", starts_at: 26-02-2020, ends_at: 26-02-2020,
location: "Haparandaweg 720 Amsterdam", user: user1, max_capacity: 20, status: "not fully booked", description: "Wild jamsession in Westerpark", lat: "", lng: "")
jamsession2.image.attach(io:filey, filename:"jamsession2.png", content_type: 'image/png')

filez = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598518875/trombone_amrr9u.jpg")
jamsession3  = JamSession.create(title: "Jamsession One whoop whoop", starts_at: 26-02-2020, ends_at: 26-02-2020,
location: "Haparandaweg 720 Amsterdam", user: user1, max_capacity: 20, status: "not fully booked", description: "Wild jamsession in Westerpark", lat: "", lng: "")
jamsession3.image.attach(io:filez, filename:"jamsession3.png", content_type: 'image/png')

filed = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598518876/banjo_lljlgl.jpg")
jamsession4  = JamSession.create(title: "Jamsession One whoop whoop", starts_at: 26-02-2020, ends_at: 26-02-2020,
location: "Haparandaweg 720 Amsterdam", user: user1, max_capacity: 20, status: "not fully booked", description: "Wild jamsession in Westerpark", lat: "", lng: "")
jamsession4.image.attach(io:filed, filename:"jamsession4.png", content_type: 'image/png')

