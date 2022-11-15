class Author
    attr_accessor :date, :book, :person
  
    def initialize(first_name, last_name)
      @id = rand(1..1000)
      @first_name = first_name
      @last_name = last_name
      @items = []
    end
  
    def add_item(item)
        item.author = self
        @items.push(item)
    end
  end
  