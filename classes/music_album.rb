require_relative './items'
class MusicAlbum < Item
  attr_accessor :on_spotify, :name
  attr_reader :items

end
