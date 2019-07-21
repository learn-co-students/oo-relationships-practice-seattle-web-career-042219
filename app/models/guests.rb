class Guest

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def book_stay(listing, date, duration)
    Trip.new(listing, self, date, duration)
  end

  def trips
    Trip.all.select {|trip| trip.guest == self}
  end

  def listings
    trips.map {|trip| trip.listing}
  end

  def trip_count
    trips.size
  end

  def self.pro_traveller
    self.all.select {|guest| guest.trip_count > 1}
  end

  def self.find_all_by_name(name)
    self.all.select {|guest| guest.name == name}
  end


end
