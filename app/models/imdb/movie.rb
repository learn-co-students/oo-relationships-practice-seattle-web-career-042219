class Movie

    attr_accessor :movie_name

    @@all=[]

    def initialize(movie_name)
        @movie_name = movie_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_actors
        mc_group= CharacterMovie.all.group_by do |mc|
            mc.movie
        end
        mc_group.max_by do |k,v|
            v.count
        end.first
    end

end