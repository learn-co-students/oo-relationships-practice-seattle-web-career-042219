class Movie

    attr_accessor :name

    @@all=[]

    def initialize(name)
        @name=name
        # @actor=actor
        @@all<<self
    end

    def self.all
        @@all
    end

    def self.most_actors
        Character.all.max_by do |character|
            binding.pry
            character.actor.size
        end
    end

end