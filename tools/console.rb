require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Pry.start

thom = Trainer.new('Thom')
bryce = Trainer.new('Bryce')
winston = Trainer.new('Winston')
kelly = Trainer.new('Kelly')
deshaun = Trainer.new('DeShaun')

corey = Client.new('Corey')
jamal = Client.new('Jamal')
danny = Client.new('Danny')
marissa = Client.new('Marissa')
travis = Client.new('Travis')
tim = Client.new('Timothy')
tory = Client.new('Tory')

yale = Location.new('Yale and Stewart')
edmonds = Location.new('Edmonds')
lynnwood = Location.new('Lynnwood')
rainier = Location.new('Rainer Ave')

jamal.assign_trainer(kelly)
marissa.assign_trainer(winston)
danny.assign_trainer(kelly)
corey.assign_trainer(kelly)
travis.assign_trainer(deshaun)
tim.assign_trainer(thom)
tory.assign_trainer(kelly)

jamal.make_appointment(yale, '2019-05-10')
jamal.make_appointment(rainier, '2019-05-11')
jamal.make_appointment(yale, '2019-05-12')

travis.make_appointment(edmonds, '2019-05-06')
travis.make_appointment(lynnwood, '2019-05-03')

danny.make_appointment(edmonds, '2019-04-04')
corey.make_appointment(lynnwood, '2019-02-22')

# jamal = Guest.new('Jamal Shareef')
# jamal_1 = Guest.new('Jamal Shareef')
# lloryn = Guest.new('Lloryn Hubbard')
# yolanda = Guest.new('Yolanda Irvin')
# tania = Guest.new('Tania Campbell')
# courtney = Guest.new('Courtney Shareef')
# zavonne = Guest.new('Zavonne Shareef')
# rahsaan = Guest.new('Rahsaan Shareef')
#
# west_pine = Listing.new('West Pine', 'Seattle')
# broadway_4 = Listing.new('Broadway 4', 'New York City')
# redding = Listing.new('Redding Place', 'Philadelphia')
# orchard = Listing.new('Orchard House', 'Atlanta')
# marion = Listing.new('340 Marion', 'Seattle')
#
# jamal.book_stay(west_pine, '2019-05-02', 5)
# jamal.book_stay(broadway_4, '2019-07-30', 7)
# jamal.book_stay(orchard, '2019-11-16', 4)
#
# yolanda.book_stay(redding, '2019-04-27', 3)
# yolanda.book_stay(west_pine, '2019-02-24', 2)
#
# zavonne.book_stay(orchard, '2019-01-02', 3)
#
# rahsaan.book_stay(broadway_4, '2019-02-27', 4)
#
# courtney.book_stay(marion, '2019-10-23', 4)
# tania.book_stay(broadway_4, '2019-07-08', 2)

binding.pry

puts 'Have a Great Trip'
