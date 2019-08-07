class Ingredients

    attr_accessor :name, :calories

    @@all=[]

    def initialize(name, calories)
        @name=name
        @calories=calories
        self.class.all << self
    end

    def self.all
        @@all
    end

    def dessert
        Dessert.all.select do |dessert|
            dessert.ingredients.include?(self)
        end
    end

    def bakery
        self.dessert.map do |dessert|
            dessert.bakery
        end
    end

    def self.find_all_by_name(given_name)
        self.all.select do |ingredient |
            ingredient.name.include?(given_name)
        end
    end
end