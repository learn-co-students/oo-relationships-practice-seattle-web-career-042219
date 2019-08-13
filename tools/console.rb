require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Air BnB

guest_1 = Guest.new("Adam")
guest_2 = Guest.new("Bob")
guest_3 = Guest.new("Carl")
guest_4 = Guest.new("Dave")
guest_5 = Guest.new("Eric")

listing_1 = Listing.new("1st st.", "Atlanta")
listing_2 = Listing.new("2nd st.", "Baltimore")
listing_3 = Listing.new("3rd st.", "Chicago")
listing_4 = Listing.new("4th st.", "Denver")
listing_5 = Listing.new("5th st.", "Erie")

trip_1 = Trip.new(guest_1, listing_1)
trip_2 = Trip.new(guest_2, listing_2)
trip_3 = Trip.new(guest_3, listing_3)
trip_4 = Trip.new(guest_4, listing_4)
trip_5 = Trip.new(guest_5, listing_5)

# Bakery

b1 = Bakery.new("Adam's Bakery")
b2 = Bakery.new("Bob's Bakery")
b3 = Bakery.new("Carl's Bakery")
b4 = Bakery.new("Dana's Bakery")

i1 = Ingredients.new("sugar", 100)
i2 = Ingredients.new("flour", 50)
i3 = Ingredients.new("frosting", 200)
i4 = Ingredients.new("eggs", 1200)

d1 = Dessert.new("Apple Pie", b1, [i1, i2])
d2 = Dessert.new("Bear Claw", b2, [i3, i4])
d3 = Dessert.new("Cinnabon", b3, [i2, i4])
d4 = Dessert.new("Donut", b4, [i1, i4])


# Lyft

passenger_1 = Passenger.new("Adam")
passenger_2 = Passenger.new("Bob")
passenger_3 = Passenger.new("Cassie")

driver_1 = Driver.new("Xavier")
driver_2 = Driver.new("Yani")
driver_3 = Driver.new("Zack")

ride_1 = Ride.new(passenger_1, driver_1, 80)
ride_2 = Ride.new(passenger_2, driver_1, 5)
ride_3 = Ride.new(passenger_3, driver_1, 50)
ride_4 = Ride.new(passenger_1, driver_2, 120)
ride_5 = Ride.new(passenger_2, driver_2, 30)
ride_6 = Ride.new(passenger_3, driver_3, 10)

# IMDb


# Crowdfunding

u1 = User.new("Steve Rogers")
u2 = User.new("Tony Stark")
u3 = User.new("Thor Odinson")
u4 = User.new("Bruce Banner")

# name, creator, goal_amount
pr1 = Project.new("Vibranium Mine", u1, 20)
pr2 = Project.new("Arc Reactor Research", u2, 20)
pr3 = Project.new("Mjolnir Recreation Fund", u3, 20)
pr4 = Project.new("Hulk Sequel", u4, 20)

# user, project, amount
pl1 = Pledge.new(u1, pr1, 10)
pl2 = Pledge.new(u2, pr2, 20)
pl3 = Pledge.new(u3, pr3, 30)
pl4 = Pledge.new(u2, pr2, 20)
pl5 = Pledge.new(u3, pr3, 20)

# Gym

location_1 = Location.new("Seattle")
location_2 = Location.new("Spokane")
location_3 = Location.new("Portland")

client_1 = Client.new("Ada", [])
client_2 = Client.new("Bob", [])
client_3 = Client.new("Claire", [])

trainer_1 = Trainer.new("Xavier", location_1, [client_1])
trainer_2 = Trainer.new("Yvette", location_2, [client_2])
trainer_3 = Trainer.new("Zack", location_3, [client_3, client_2])

Pry.start
puts "Session done."