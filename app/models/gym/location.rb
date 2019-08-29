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
        LocationTrainer.all.select do |lt|
            binding.pry
            lt.trainer.client.size
        end.location
    end

end