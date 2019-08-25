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
        ActorCharacter.all.each do |actor_character|
            binding.pry
            actor_character
        end
    end

end