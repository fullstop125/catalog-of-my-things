require_relative 'book'
class Label

    attr_accessor :title, :items, :color, :label

    def initialize(title, color)
        @title = title
        @color = color
        @items = []
    end

    def add_item(item)
        @items.push(item) unless @items.include?(item)
        item.label = self

end