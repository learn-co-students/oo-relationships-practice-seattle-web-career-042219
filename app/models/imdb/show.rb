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
        x=Character.all.select do |character|
            binding.pry
            character.movie.name == self.name
        end
        x.map do |character|
            binding.pry
            character.movie
        end
    end

end