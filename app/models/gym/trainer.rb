class Trainer

    attr_accessor :name, :location, :client

    @@all=[]

    def initialize(name, location, client)
        @name = name
        @location = location
        @client = client
        
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_clients
        self.all.max_by do |trainer|
            trainer.client.size
        end.name
    end

end