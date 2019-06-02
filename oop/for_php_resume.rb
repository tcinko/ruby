class Animal
  attr_accessor :name, :color

# эквивалентно -
#  attr_reader :name, :color
#  attr_writer :name, :color
#-----------------------------
#  attr_reader :name, :color
# эквивалентно -
#  def name
#    @name
#  end
#  def color
#    @color
#  end
#----------------------------
#  attr_writer :name, :color
# эквивалентно -
#  def name=
#    @name
#  end
#  def color=
#    @color
#  end


#  конструктор Animal.new(str_name, 'red')
  def initialize(name, color = 'red')
    @name  = name
    @color = color
  end

#  эквивалентно
#  obj = Animal.new
#  obj.name = str_name
#  obj.color = 'red'

end

class Cat < Animal

  def meow
    "Cat \"#{@name}\" is saying meow"
#    'Cat "'+@aname+'" is saying meow'
#     если инстансная переменная не определена, то метод вызовет прерываниеno "implicit conversion of nil into String (TypeError)"
  end

end

cat = Cat.new('garfield')
puts(cat.name == 'garfield' ? 'This is my cat, his name is "garfield"' : 'I don\'t know name of this cat')
puts(cat.meow == 'Cat "garfield" is saying meow' ? 'garfield said `meow`' : 'Who did say `meow`?')
puts
puts cat.meow + ' -cat.meow'
puts "#{cat.color} -cat.color"
puts
cat.name = 'other name'
puts cat.name + ' - cat.name `other`'
