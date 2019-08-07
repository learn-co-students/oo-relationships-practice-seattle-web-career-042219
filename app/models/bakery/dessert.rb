class Dessert

    attr_accessor :name, :calories, :bakery, :ingredients

    @@all=[]

    def initialize(name, bakery, ingredients)
        @name=name
        @bakery=bakery
        @ingredients=ingredients
        @@all << self
    end

    def self.all
        @@all
    end

    def calories
        final_array=[]
        Dessert.all.map do |dessert|
            dessert.ingredients.map do |x|
                final_array << x.calories
            end
        end
        final_array.sum
    end

end