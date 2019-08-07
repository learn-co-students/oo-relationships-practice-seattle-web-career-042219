class Passenger

    attr_accessor :name

    @@all =[]

    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def find_rides_helper
        Ride.all.select do |ride|
            ride.passenger == self
        end
        # returns all of a passenger's ride objects
    end

    def drivers
        find_rides_helper.map do |ride|
            ride.driver
       end
        # returns all of a passenger's drivers
    end

    def rides
        find_rides_helper
        # returns all of a passenger's rides
    end

    def total_distance
        find_rides_helper.map do |ride|
            ride.distance
        end.sum
        # returns an array of a passenger's rides, then sums it
    end

    def self.premium_members
        Passenger.all.select do |passenger|
            passenger.total_distance > 100
        end
    end

end