class Reservation

  @@all = []

  attr_accessor :location, :trainer, :client, :date
  def initialize(location, trainer, client, date)
    @location = location
    @trainer = trainer
    @client = client
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end
end
