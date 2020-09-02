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
Instrument.destroy_all
puts 'Creating 2 fake users...'
file1 = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598622297/n8xr08qf99exurskmo58chisatl7.jpg")
user1 = User.create(first_name: "Laura", last_name: "Van Nieuwland", phone_number: "0686166366", email: "lauravannieuwland@gmail.com", password: "123456" )
user1.profile_image.attach(io: file1, filename: "user1.png", content_type: 'image/png')

file2 = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598629211/nv7mj85q759mx44oaelgejupd35a.jpg")
user2 = User.create(first_name: "Raquel", last_name: "Tessarollo",
phone_number: "0655443567", email: "tessarollo.raquel@gmail.com", password: "123456")
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
filex = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598622105/wvuec8c3rgvtwtq4spcuvgehz50t.jpg")
jamsession1  = JamSession.create(title: "Jamsession One whoop whoop", starts_at: "09/14/2020 8:00", ends_at: "09/14/2020 11:00",
location: "Haparandaweg 720 Amsterdam", user: user1, max_capacity: 20, status: "not fully booked", description: "Wild jamsession in Westerpark, everybody is invited, come guys, it will be awesome!", lat: "", lng: "")
jamsession1.image.attach(io:filex, filename:"jamsession1.png", content_type: 'image/png')

filey = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598518874/eletric_guitar_elpgtc.jpg")
jamsession2  = JamSession.create(title: "Jamsession Two in a rainy day", starts_at: "09/15/2020 8:00", ends_at: "09/15/2020 11:00",
location: "Wilhelminastraat 57 Amsterdam", user: user1, max_capacity: 10, status: "not fully booked", description: "Wild jamsession in Vondelpark, everybody is invited, come guys, it will be awesome!", lat: "", lng: "")
jamsession2.image.attach(io:filey, filename:"jamsession2.png", content_type: 'image/png')

filez = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598518875/trombone_amrr9u.jpg")
jamsession3  = JamSession.create(title: "Jamsession Three whoop whoop again", starts_at: "09/16/2020 8:00", ends_at: "09/16/2020 11:00",
location: "Espakker 23 Teteringen", user: user1, max_capacity: 5, status: "not fully booked", description: "Wild jamsession in Beatrixpark, everybody is invited, come guys, it will be awesome!", lat: "", lng: "")
jamsession3.image.attach(io:filez, filename:"jamsession3.png", content_type: 'image/png')

filed = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598518876/banjo_lljlgl.jpg")
jamsession4  = JamSession.create(title: "Jamsession Four whatever", starts_at: "09/17/2020 8:00", ends_at: "09/17/2020 11:00",
location: "Nieuwstraat 20 Breda", user: user1, max_capacity: 18, status: "not fully booked", description: "Wild jamsession in Rembrantpark, everybody is invited, come guys, it will be awesome!", lat: "", lng: "")
jamsession4.image.attach(io:filed, filename:"jamsession4.png", content_type: 'image/png')

puts 'Creating instrument list...'
Instrument.create(instrument_type: "guitar")
Instrument.create(instrument_type: "bass")
Instrument.create(instrument_type: "drums")
Instrument.create(instrument_type: "violin")
Instrument.create(instrument_type: "piano")
Instrument.create(instrument_type: "saxophone")
Instrument.create(instrument_type: "flute")
Instrument.create(instrument_type: "cello")
Instrument.create(instrument_type: "clarinet")
Instrument.create(instrument_type: "trumpet")
Instrument.create(instrument_type: "microphone")
Instrument.create(instrument_type: "harp")
Instrument.create(instrument_type: "banjo")
Instrument.create(instrument_type: "percussion instrument")



