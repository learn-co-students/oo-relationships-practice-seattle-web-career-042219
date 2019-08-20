class Client

    attr_accessor :name, :trainer

    @@all=[]

    def initialize(name, trainer)
        @name = name
        @trainer = treainer
        @@all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer)
        Client.new(self, trainer)
    end

end