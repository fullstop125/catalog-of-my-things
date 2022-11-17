require_relative './items'

class Book < Item
  attr_accessor :title, :publisher, :cover_state

  def initialize(title, publisher, publish_date, cover_state)
    super(publish_date)
    @title = title
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || cover_state == 'bad'
  end
end
