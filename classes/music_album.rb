require_relative './items'
class MusicAlbum < Item
  attr_accessor :on_spotify, :name
  attr_reader :items
  def initialize(publish_date, on_spotify, name)
    super(publish_date)

  end
end
