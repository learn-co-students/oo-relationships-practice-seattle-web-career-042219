class Listing

    attr_accessor :address, :city

    @@all=[]

    def initialize(address, city)
        @address=address
        @city=city
        @@all << self
    end

    def self.all
        @@all
    end

    def guests
        self.trips.map do |trip|
            trip.guest
        end.uniq
    end

    def trips
        Trip.all.select do |trip| 
            trip.listing == self 
        end
    end

    def trip_count
        self.trips.length
    end

    def self.find_all_by_city(city)
        self.all.select do |listing|
            listing.city == city
        end
    end

    def self.most_popular
        self.all.max_by do |listing|
            self.all.count(listing)
        end
    end

    def trip_count
        self.trips.length
    end

end