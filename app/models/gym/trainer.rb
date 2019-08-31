class Trainer

    attr_accessor :name

    @@all=[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_clients
        result_hash = {}
        Client.all.each do |client|
            result_hash[client.trainer] ? result_hash[client.trainer] +=1 :  result_hash[client.trainer] =1
        end
        result_hash.max_by do |k, v|
            v
        end
    end

end