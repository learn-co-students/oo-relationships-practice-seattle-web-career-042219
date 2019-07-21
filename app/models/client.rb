class Client

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def assign_trainer(trainer)
    trainer.client << self
  end


  def make_appointment(location, date)
      trainer = Trainer.all.find {|trainer| trainer.client.include?(self)}
    Reservation.new(location, trainer, self, date)

    #
    # trainer = Trainer.new(trainer.name, location, date)
    # trainer.client = self
  end


end
