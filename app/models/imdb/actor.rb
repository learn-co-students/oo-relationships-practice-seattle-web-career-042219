class Actor

    attr_accessor :actor_name

    @@all=[]

    def initialize(actor_name)
        @actor_name = actor_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_characters
        char_group=Character.all.group_by do |character|
            character.actor
        end
        char_group.max_by do |k, v|
            v.count
        end.first
    end

end