class Show

    attr_accessor :show_name

    @@all=[]

    def initialize(show_name)
        @show_name = show_name
        @@all << self
    end

    def self.all
        @@all
    end

    def on_the_big_screen
       CharacterMovie.all.select do |cm|
            cm.movie.movie_name == self.show_name
        end.first.movie
    end

end