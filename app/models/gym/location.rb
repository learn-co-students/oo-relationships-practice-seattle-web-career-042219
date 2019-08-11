class Location

    attr_accessor :name

    @@all=[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.least_clients
        trainer_num_clients_hash = {}
        Trainer.all.each do |trainer|
            if trainer_num_clients_hash[trainer.name]
                trainer_num_clients_hash[trainer.name] +=1
            else
                trainer_num_clients_hash[trainer.name] =1
            end
        end
        trainer_locations_array=[]
        Trainer.all.each do |trainer|
            trainer_locations_array << trainer.location.name
        end
        trainer_num_clients_hash.key(trainer_num_clients_hash.values.max)
        x = Trainer.all.select do |trainer|
            trainer.name == trainer_num_clients_hash.key(trainer_num_clients_hash.values.max)
        end
        x.first.location.name
    end

end

# pledge_number_of_backers_hash = {}
# 		Pledge.all.map do |pledge|
# 			if pledge_number_of_backers_hash[pledge.project.name]
# 				pledge_number_of_backers_hash[pledge.project.name] += 1
# 			else
# 				pledge_number_of_backers_hash[pledge.project.name] = 1
# 			end
# 		end
# 		pledge_number_of_backers_hash.key(pledge_number_of_backers_hash.values.max)