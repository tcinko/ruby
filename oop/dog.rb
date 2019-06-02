class Dog

  @@greeting = 'Hello! '           #переменная класса

  def initialize (get_voice)
    @voice = get_voice             #переменная объекта класса (instance variable)
  end

  def gav
    puts @@greeting + @voice
  end


  class << self                    #def self.gav
    attr_accessor :greeting        #инстансная переменная класса
      def gav
        puts @@greeting + @greeting
      end
  end                               #def self.gav


end



bobik = Dog.new(' it\'s a dog voice')
bobik.gav

Dog.greeting = 'class greeting'
Dog.gav