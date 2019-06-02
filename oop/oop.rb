class Dog
   def set_name( aName )
     @myname = aName
   end

    def get_name
      return @myname
    end

    def gav
      return 'r-r-r-r!'
    end

end

class Pet
   attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
end

class Dogy < Pet
end

class Snake < Pet
   attr_accessor :length
end


cat_object = Cat.new
cat_object.name = "Pussy"
puts 'my cat name is ' + cat_object.name

udav = Snake.new
udav.name = 'Kaa'
udav.length = 48.5

puts 'snake '+ udav.name + ' has length ' + udav.length.to_s + ' parrot\'s'

moya  = Dog.new
tvoya = Dog.new

moya.set_name( 'Lassie' )
tvoya.set_name( 'Rex' )

puts 'Name of my dog - ' + moya.instance_variable_get(:@myname)
puts (moya.instance_variable_get :@myname).class
puts moya.get_name + ' - result of `moya.get_name`'
puts moya.gav

