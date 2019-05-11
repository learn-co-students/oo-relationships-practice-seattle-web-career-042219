class Ride

    attr_accessor :passenger, :driver, :distance

    @@all =[]

    def initialize (passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        distance_ar=Ride.all.map do |ride|
            ride.distance
        end
        (distance_ar.sum/distance_ar.length).round(2)
    end
end
