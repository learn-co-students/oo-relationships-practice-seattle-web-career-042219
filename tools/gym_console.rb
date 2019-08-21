require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

location_1 = Location.new("Seattle")
location_2 = Location.new("Spokane")
location_3 = Location.new("Portland")

# client_1 = Client.new("Ada")
# client_2 = Client.new("Bob")
# client_3 = Client.new("Claire")
# client_4 = Client.new("David")
# client_5 = Client.new("Emily")
# client_6 = Client.new("Frankie")


trainer_1 = Trainer.new("Xavier")
trainer_2 = Trainer.new("Yvette")
trainer_3 = Trainer.new("Zack")


client_1 = Client.new("Ada", trainer_1)
client_2 = Client.new("Bob", trainer_2)
client_3 = Client.new("Claire", trainer_2)
client_4 = Client.new("David", trainer_3)
client_5 = Client.new("Emily", trainer_3)
client_6 = Client.new("Frankie", trainer_3)

# trainer_1 = Trainer.new("Xavier", location_1, [client_1])
# trainer_2 = Trainer.new("Yvette", location_2, [client_2])
# trainer_3 = Trainer.new("Zack", location_3, [client_3, client_2])

# trainer_1 = Trainer.new("Xavier", [client_1])
# trainer_2 = Trainer.new("Yvette", [client_2, client_3])
# trainer_3 = Trainer.new("Zack", [client_4, client_5, client_6])

location_trainer1 = LocationTrainer.new(location_1, trainer_1)
location_trainer2 = LocationTrainer.new(location_2, trainer_2)
location_trainer3 = LocationTrainer.new(location_3, trainer_3)

Pry.start
puts ""
puts "Session done."
puts ""