class Character

    attr_accessor :name, :actor

    @@all=[]

    def initialize(name, actor)
        @name=name
        @actor=actor
        @@all<<self
    end

    def self.all
        @@all
    end

    def self.most_appearances
        Character.all.max_by do |character|
            character.movie.size + character.show.size
        end
    end

end