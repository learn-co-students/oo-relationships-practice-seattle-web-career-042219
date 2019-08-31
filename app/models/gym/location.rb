class Location

    attr_accessor :name

    @@all=[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.least_clients
        result_ar=[]
        name = ""
        x =LocationTrainer.all.each do |lt|
            Client.all.map do |client|
                result_ar <<  client.name
            end
        end
        x.min_by do |k, v|
            v
        end.location
    end

end