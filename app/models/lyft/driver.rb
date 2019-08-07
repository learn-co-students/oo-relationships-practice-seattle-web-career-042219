class Driver

    attr_accessor :name

    @@all=[]

    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def find_rides_helper
        Ride.all.select do |ride|
            ride.driver == self
        end
        # returns all of a driver's ride objects
    end

    def passengers
        find_rides_helper.map do |ride|
            ride.passenger.name
            #  || ride.passenger only for the object
            # returns all of a driver's passenger objects
        end
    end

    def rides
        find_rides_helper
        # return all of a drivers ride objects
    end

    def self.mileage_cap(num)
        Driver.all.select do |driver|
            driver.total_distance > num
        end
        # returns passenger objects in an array
    end

    def total_distance
        find_rides_helper.map do |ride|
            ride.distance
        end.sum
        # returns an array of a passenger's rides, then sums it
    end

    # def self.mileage_cap(num)
    #     mileage_ar=[]
    #     @@all.map do |driver|
    #         new_hash={}
    #         driver.rides.each do |ride|
    #             if new_hash["#{ride.driver.name}"]
    #                 new_hash["#{ride.driver.name}"]+=ride.distance.to_f
    #             else
    #                 new_hash["#{ride.driver.name}"]=ride.distance.to_f
    #             end
    #         end
    #         mileage_ar << new_hash
    #     end
    #     x=mileage_ar.select do |driver|
    #         driver.values.first > num
    #     end
    #     x.map do |item|
    #         item.keys
    #     end.flatten.uniq
    # end

end