class Location

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def own_reservations
    Reservation.all.select {|res| res.location == self}
  end

  def self.least_clients
    new_hash = {}
    self.all.map {|location| new_hash[location] = location.own_reservations.size}

    new_hash.sort_by {|location, size| size}.to_h.keys.first

    # arr = Trainer.all.map {|trainer| trainer.location}
    # arr.uniq.min_by {|location| arr.count(location)}
  end
  
end
