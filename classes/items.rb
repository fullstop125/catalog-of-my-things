require 'date'

class Item
  attr_accessor :publish_date
  attr_reader :author, :label, :archived, :genre

  def initialize(publish_date)
    @id = Random.rand(1...1000)
    @publish_date = publish_date
    @archived = archived
  end

  def genre=(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def author=(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  def label=(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  def move_to_archive
    @archived = can_be_archived?
  end

  private

  def can_be_archived?
    date = DateTime.parse(@publish_date).to_date
    (Date.today.year - date.year) > 10
  end
end
