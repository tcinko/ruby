class SuperCat

    def initialize(height, weight, tail_color, head_color, legs_color)
        @height, @weight, @tail_color, @head_color, @legs_color =
         height, weight,  tail_color,  head_color,  legs_color
    end

    def self.white_cat(height, weight)
        new(height, weight, "white", "white", "white")
    end

    def self.black_cat(height, weight)
        new(height, weight, "black", "black", "black")
    end

    def self.big_cat(tail_color, head_color, legs_color)
        new(100, 100, tail_color, head_color, legs_color)
    end

end

a = SuperCat.new(10, 15, "white", "black", "white")
b = SuperCat.black_cat(13, 20)
c = SuperCat.big_cat("white", "red", "red")
p(a)

puts c.instance_variable_get :@legs_color

#---------------------------------------------------------------------------
class HyperCat
        attr_accessor :name, :height, :weight, :age, :tail_color, :head_color, :legs_color

#    def initialize(&block)
#        instance_eval &block
#    end

    # Другие методы...
end

pussy = HyperCat.new do
    self.name = "Pussy"
    self.height = 10
    self.weight = 12
    self.age = 3.2
    self.tail_color = "gray"
    self.head_color = "gray"
    self.legs_color = "white"
end

pussy2 = HyperCat.new
pussy2.name = 'Lusy'
puts 'pussy age ' + pussy.age.to_s
p 'pussy2 name is ' + pussy2.name



ExtraCat = Struct.new("ExtraCat", :name, :age, :weight)
lucky = ExtraCat.new("Lucky", 2, 4)
lucky.age +=1
puts 'lucky age is ' + lucky[:age].to_s