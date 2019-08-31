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

    # def self.least_clients
    #     result_ar=[]
    #     name = ""
    #     x =LocationTrainer.all.each do |lt|
    #         Client.all.map do |client|
    #             result_ar <<  client.name
    #         end
    #     end
    #     x.min_by do |k, v|
    #         v
    #     end.location
    # end

    def self.least_clients
        result_hash={}
        Client.all.each do |client|
            result_hash[client.trainer] ? result_hash[client.trainer] +=1 :  result_hash[client.trainer] =1
        end
        x=result_hash.min_by do |k, v|
            v
        end
        y=LocationTrainer.all.select do |lt|
            lt.trainer == x.first
        end
        y.first.location
    end

end