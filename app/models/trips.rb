class Trip
  @@all = []

  attr_accessor :listing, :guest, :date, :duration

  def initialize(listing, guest, date, duration)
    @listing = listing
    @guest = guest
    @date = date
    @duration = duration
    @@all << self
  end

  def self.all
    @@all
  end


end
