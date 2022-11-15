class Author
    attr_reader :first_name, :last_name
    attr_accessor :items
  
    def initialize(first_name, last_name)
      @id = rand(1..1000)
      @first_name = first_name
      @last_name = last_name
      @items = []
    end
  
    def add_item(item)
        item.author = self
        @items.push(item) unless @items.include?(item)
    end 
  end
  