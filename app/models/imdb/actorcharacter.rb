class ActorCharacter

    attr_accessor :actor, :character

    @@all=[]

    def initialize(actor, character)
        @actor=actor
        @character=character
        @@all<<self
    end

    def self.all
        @@all
    end

end