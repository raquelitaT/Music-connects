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
UserInstrument.destroy_all
Request.destroy_all
Post.destroy_all
JamSessionInstrument.destroy_all


puts 'Creating 2 fake users...'
file1 = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598622297/n8xr08qf99exurskmo58chisatl7.jpg")
user1 = User.create(first_name: "Laura", last_name: "Van Nieuwland", phone_number: "0686166366", email: "lauravannieuwland@gmail.com", password: "123456" )
user1.profile_image.attach(io: file1, filename: "user1.png", content_type: 'image/png')

file2 = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598629211/nv7mj85q759mx44oaelgejupd35a.jpg")
user2 = User.create(first_name: "Raquel", last_name: "Tessarollo",
phone_number: "0655443567", email: "tessarollo.raquel@gmail.com", password: "123456")
user2.profile_image.attach(io:file2, filename:"user2.png", content_type: 'image/png')

puts 'Creating instrument list...'
instrument1 = Instrument.create(instrument_type: "Guitar")
instrument2 = Instrument.create(instrument_type: "Bass Guitar")
instrument3 = Instrument.create(instrument_type: "Drums")
instrument4 = Instrument.create(instrument_type: "Violin")
instrument5 = Instrument.create(instrument_type: "Piano")
instrument6 = Instrument.create(instrument_type: "Saxophone")
instrument7 = Instrument.create(instrument_type: "Flute")
instrument8 = Instrument.create(instrument_type: "Cello")
instrument9 = Instrument.create(instrument_type: "Clarinet")
instrument10 = Instrument.create(instrument_type: "Trumpet")
instrument11 = Instrument.create(instrument_type: "Microphone")
instrument12 = Instrument.create(instrument_type: "Harp")
instrument13 = Instrument.create(instrument_type: "Banjo")
instrument14 = Instrument.create(instrument_type: "Percussion")

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
jamsession1  = JamSession.create(title: "Jamsession One whoop whoop", starts_at: "2020-10-08 18:00:00 UTC", ends_at: "2020-10-08 20:00",
location: "Haparandaweg 720 Amsterdam", user: user1, max_capacity: 20, status: "not fully booked", description: "Wild jamsession in Westerpark, everybody is invited, come guys, it will be awesome!", lat: "", lng: "")
jamsession1.image.attach(io:filex, filename:"jamsession1.png", content_type: 'image/png')

filey = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598518874/eletric_guitar_elpgtc.jpg")
jamsession2  = JamSession.create(title: "Jamsession Two in a rainy day", starts_at: "2020-11-09 19:00 UTC", ends_at: "2020-11-09 23:59 UTC",
location: "Wilhelminastraat 57 Amsterdam", user: user1, max_capacity: 10, status: "not fully booked", description: "Wild jamsession in Vondelpark, everybody is invited, come guys, it will be awesome!", lat: "", lng: "")
jamsession2.image.attach(io:filey, filename:"jamsession2.png", content_type: 'image/png')

filez = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598518875/trombone_amrr9u.jpg")
jamsession3  = JamSession.create(title: "Jamsession Three whoop whoop again", starts_at: "2020-10-12  19:00 UTC", ends_at: "2020-10-12  22:00 UTC",
location: "Espakker 23 Teteringen", user: user1, max_capacity: 5, status: "not fully booked", description: "Wild jamsession in Beatrixpark, everybody is invited, come guys, it will be awesome!", lat: "", lng: "")
jamsession3.image.attach(io:filez, filename:"jamsession3.png", content_type: 'image/png')

filed = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598518876/banjo_lljlgl.jpg")
jamsession4  = JamSession.create(title: "Jamsession Four whatever", starts_at: "2020-12-31  11:00 UTC", ends_at: "2021-01-01  12:00 UTC",
location: "Nieuwstraat 20 Breda", user: user2, max_capacity: 18, status: "not fully booked", description: "Wild jamsession in Rembrantpark, everybody is invited, come guys, it will be awesome!", lat: "", lng: "")
jamsession4.image.attach(io:filed, filename:"jamsession4.png", content_type: 'image/png')


puts "Creating 4 UserInstruments per user"
UserInstrument.create(skill_level: "5", user: user1, instrument: instrument1)
UserInstrument.create(skill_level: "4", user: user1, instrument: instrument2)
UserInstrument.create(skill_level: "3", user: user1, instrument: instrument3)
UserInstrument.create(skill_level: "2", user: user1, instrument: instrument4)
UserInstrument.create(skill_level: "5", user: user2, instrument: instrument5)
UserInstrument.create(skill_level: "4", user: user2, instrument: instrument6)
UserInstrument.create(skill_level: "3", user: user2, instrument: instrument7)
UserInstrument.create(skill_level: "2", user: user2, instrument: instrument8)

puts "Creating 2 JamSessionInstruments per Jam Session"
JamSessionInstrument.create(instrument: instrument1, jam_session: jamsession1)
JamSessionInstrument.create(instrument: instrument2, jam_session: jamsession2)
JamSessionInstrument.create(instrument: instrument3, jam_session: jamsession3)
JamSessionInstrument.create(instrument: instrument4, jam_session: jamsession4)
JamSessionInstrument.create(instrument: instrument5, jam_session: jamsession1)
JamSessionInstrument.create(instrument: instrument6, jam_session: jamsession2)
JamSessionInstrument.create(instrument: instrument7, jam_session: jamsession3)
JamSessionInstrument.create(instrument: instrument8, jam_session: jamsession4)
JamSessionInstrument.create(instrument: instrument9, jam_session: jamsession1)
JamSessionInstrument.create(instrument: instrument10, jam_session: jamsession2)
JamSessionInstrument.create(instrument: instrument11, jam_session: jamsession3)
JamSessionInstrument.create(instrument: instrument12, jam_session: jamsession4)
JamSessionInstrument.create(instrument: instrument13, jam_session: jamsession1)
JamSessionInstrument.create(instrument: instrument14, jam_session: jamsession2)

puts "Creating 2 requests per jamsession"

Request.create(status: "pending", jam_session: jamsession1, user: user1)
Request.create(status: "pending", jam_session: jamsession1, user: user2)
Request.create(status: "pending", jam_session: jamsession2, user: user1)
Request.create(status: "pending", jam_session: jamsession2, user: user2)
Request.create(status: "pending", jam_session: jamsession3, user: user1)
Request.create(status: "pending", jam_session: jamsession3, user: user2)
Request.create(status: "pending", jam_session: jamsession4, user: user1)
Request.create(status: "pending", jam_session: jamsession4, user: user2)

puts "Creating 4 chats per Jam Session"
Post.create(content: "Oh wauw I really want to go to this amazing Jam Session!", user: user1, jam_session: jamsession1)
Post.create(content: "Oh wauw I really want to go to this amazing Jam Session!", user: user1, jam_session: jamsession2)
Post.create(content: "Oh wauw I really want to go to this amazing Jam Session!", user: user1, jam_session: jamsession3)
Post.create(content: "Oh wauw I really want to go to this amazing Jam Session!", user: user1, jam_session: jamsession4)
Post.create(content: "Yes me too, you wanna go together?", user: user2, jam_session: jamsession1)
Post.create(content: "Yes me too, you wanna go together?", user: user2, jam_session: jamsession2)
Post.create(content: "Yes me too, you wanna go together?", user: user2, jam_session: jamsession3)
Post.create(content: "Yes me too, you wanna go together?", user: user2, jam_session: jamsession4)
Post.create(content: "Allriht I will pick you up around 21.00?", user: user1, jam_session: jamsession1)
Post.create(content: "Allriht I will pick you up around 21.00?", user: user1, jam_session: jamsession2)
Post.create(content: "Allriht I will pick you up around 21.00?", user: user1, jam_session: jamsession3)
Post.create(content: "Allriht I will pick you up around 21.00?", user: user1, jam_session: jamsession4)
Post.create(content: "Yeah sure thanks will see you then!", user: user2, jam_session: jamsession1)
Post.create(content: "Yeah sure thanks will see you then!", user: user2, jam_session: jamsession2)
Post.create(content: "Yeah sure thanks will see you then!", user: user2, jam_session: jamsession3)
Post.create(content: "Yeah sure thanks will see you then!", user: user2, jam_session: jamsession4)







