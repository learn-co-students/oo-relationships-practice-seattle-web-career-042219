class Show

    attr_accessor :name

    @@all=[]

    def initialize(name)
        @name=name
        @@all<<self
    end

    def self.all
        @@all
    end

    def on_the_big_screen
        # Character.all.select do |character|
        #     character.movie.name == self.name
        # end.movie
        Movie.all.select do |movie|
            movie.name == self.name
        end
    end

end