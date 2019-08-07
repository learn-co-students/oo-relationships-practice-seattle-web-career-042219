require 'bundler/setup'
Bundler.require
require_all 'app'


# Air BnB

g1= Guest.new("Adam")
g2= Guest.new("Bob")
g3= Guest.new("Carl")
g4= Guest.new("Dave")
g5= Guest.new("Eric")

l1=Listing.new("1st st.", "Atlanta")
l2=Listing.new("2nd st.", "Baltimore")
l3=Listing.new("3rd st.", "Chicago")
l4=Listing.new("4th st.", "Denver")
l5=Listing.new("5th st.", "Erie")

t1=Trip.new(g1, l1)
t2=Trip.new(g2, l2)
t3=Trip.new(g3, l3)
t4=Trip.new(g4, l4)
t5=Trip.new(g5, l5)

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

