class Movie

    attr_accessor :name

    @@all=[]

    def initialize(name)
        @name=name
        @@all<<self
    end

    def self.all
        @@all
    end

    def self.most_actors
       x= MovieCharacter.all.group_by do |movie_character|
            movie_character.movie
        end
        x.max_by do |k,v|
            v.count
        end[0]
    end


end