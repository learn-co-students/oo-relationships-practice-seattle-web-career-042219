class Actor

    attr_accessor :name

    @@all=[]

    def initialize(name)
        @name=name
        @@all<<self
    end

    def self.all
        @@all
    end

    def self.most_characters
        ActorCharacter.all.max_by do |character_actor|
            binding.pry
            character_actor.character
        end
    end

end