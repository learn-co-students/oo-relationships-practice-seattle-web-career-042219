class Listing

  @@all = []

  attr_accessor :city, :name

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select {|trip| trip.listing == self}
  end

  def guests
    trips.map {|trip| trip.guest}
  end

  def trip_count
    trips.length
  end

  def self.find_all_by_city(city)
    arr = []
    Trip.all.each do |trip|
      if trip.listing.city == city
        arr << trip.listing
      end
    end
    arr.uniq
  end

  def self.most_popular
    arr = Trip.all.map {|trip| trip.listing}
    arr.uniq.max_by{|listing| arr.count(listing)}
  end

end
