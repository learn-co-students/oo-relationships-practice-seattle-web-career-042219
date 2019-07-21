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
        # returns all of a passengers ride objects
    end

    def drivers
        find_rides_helper.map do |ride|
            ride.driver
       end
        # returns all of a passengers drivers
    end

    def rides
        find_rides_helper
        # returns all of a passengers rides
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

    # def self.premium_members
    #     premium_ar=[]
    #     @@all.map do |passenger|
    #         new_hash={}
    #         passenger.rides.each do |ride|
    #             if new_hash["#{ride.passenger.name}"]
    #                 new_hash["#{ride.passenger.name}"]+=ride.distance.to_f
    #             else
    #                 new_hash["#{ride.passenger.name}"]=ride.distance.to_f
    #             end
    #         end
    #         premium_ar << new_hash
    #     end
    #     x=premium_ar.select do |passenger|
    #         passenger.values.first > 100
    #     end
    #     x.map do |item|
    #         item.keys
    #     end.flatten
    # end

  

end