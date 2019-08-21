class Movie

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

    def self.most_actors
        self.all.max_by do |movie|
            movie.actor.size
        end
    end

end