class Character

    attr_accessor :character_name, :actor

    @@all=[]

    def initialize(character_name, actor)
        @character_name = character_name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_appearances
        cm_group = CharacterMovie.all.group_by do |cm|
            cm.character
        end
        # all charactermovies grouped by char_name
        cm_group.max_by do |k, v|
            v.count
        end.first
    end

end