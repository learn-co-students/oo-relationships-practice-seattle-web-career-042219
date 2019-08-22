class Character

    attr_accessor :name, :movie, :actor, :show

    @@all=[]

    def initialize(name, movie, actor, show)
        @name=name
        @movie=movie
        @actor=actor
        @show=show
        @@all<<self
    end

    def self.all
        @@all
    end

    def self.most_appearances
        Character.all.max_by do |character|
            # binding.pry
            character.movie.size + character.show.size
        end
    end

end