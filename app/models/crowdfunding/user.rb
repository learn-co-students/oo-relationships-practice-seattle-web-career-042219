class User

    attr_accessor :name

    @@all=[]

    def initialize(name)
        @name=name
        @@all <<self
    end

    def self.all
        @@all
    end

    def self.highest_pledge
        Pledge.all.max_by do |pledge|
            pledge.amount
        end.user.name
    end

    def self.multi_pledger
        ar=Pledge.all.map do |pledge|
            pledge.user.name
        end
        ar.select {|x| ar.count(x) > 1}.uniq.join(", ")
    end

    def self.project_creator
        Pledge.all.map do |pledge|
            pledge.project.creator.name
        end.uniq
    end

end