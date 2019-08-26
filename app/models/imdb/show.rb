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
            character.movie.name == self.name
        end
        x.map do |character|
            character.movie
        end
#         should return Movies that share the same name as this Show
    end

end