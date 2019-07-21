class Trainer

  @@all = []

  attr_accessor :name, :client

  def initialize(name)
    @name = name
    @client = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_clients
    new_hash = {}
    self.all.map {|trainer| new_hash[trainer] = trainer.client.size}

    new_hash.sort_by {|trainer, clients| clients}.to_h.keys.last


    # arr = self.all.map do |trainer|
    #   trainer.client
    # end
    #
    # # {|trainer| trainer.client}
    #
    # new_arr = arr.select do |client|
    #   binding.pry
    #   if client.size == true
    #     client
    #   end
    # end
    #
    # # {|client| if client.size == true}
    #
    # new_arr.max_by {|client| client.size}
  end

end
