class Bakery

    attr_accessor :name, :desserts

    @@all=[]

    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def ingredients
        self.desserts.map do |dessert| 
            dessert.ingredients
        end
    end

    def total_calories
        self.ingredients.flatten.map do |ingredient|
            ingredient.calories
        end.sum
    end

    def average_calories
        self.total_calories / self.ingredients.length
    end

    def shopping_list
        self.ingredients.flatten.map do |ingredient|
            ingredient.name
        end.join(", ")
    end

end