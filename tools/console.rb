require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


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

# IMDb


# Crowdfunding

u1 = User.new("Steve Rogers")
u2 = User.new("Tony Stark")
u3 = User.new("Thor Odinson")
u4 = User.new("Bruce Banner")

# name. creator, goal_amount
pr1 = Project.new("Vibranium Mine", u1, 20)
pr2 = Project.new("Arc Reactor Research", u2, 20)
pr3 = Project.new("Mjolnir Recreation Fund", u3, 20)
pr4 = Project.new("Hulk Sequel", u4, 20)

# user, project, goal
pl1 = Pledge.new(u1, pr1, 10)
pl2 = Pledge.new(u2, pr2, 20)
pl3 = Pledge.new(u3, pr3, 30)
pl4 = Pledge.new(u2, pr2, 20)

# Gym


Pry.start
puts "Session done."