class Fruits
    class Nutrition
        attr_accessor :protein, :vitamins
    end
    apple = Nutrition.new

    apple.protein = "0.5 g"
    apple.vitamins = "Vitamin B2"

    orange = Nutrition.new

    orange.protein = "0.9 g"
    orange.vitamins = "Vitamin C"

    puts apple.protein
    puts apple.vitamins
    puts orange.protein
    puts orange.vitamins
end