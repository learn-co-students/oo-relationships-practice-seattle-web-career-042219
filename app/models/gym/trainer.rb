class Trainer

    attr_accessor :name

    @@all=[]

    def initialize(name)
        @name = name
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