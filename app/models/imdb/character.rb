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

end