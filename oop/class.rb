class Item
    attr_accessor(:price, :color)
    def initialize (options)
      @price = options[:p]
      @color = options[:c]
    end
end

i = Item.new({:p => 10, :c => "blue"})

#i = Item.new({p:25, c:"red"})
#i = Item.new


puts i.color