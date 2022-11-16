require_relative './items'
require 'date'

class Game < Item
  attr_accessor :game_name, :last_played_at, :multiplayer

  def initialize(game_name, last_played_at, multiplayer)
    @game_name = game_name
    @last_played_at = last_played_at
    @multiplayer = multiplayer
    super(publish_date)
  end

  def can_be_archived?
    date = DateTime.parse(@last_played_at).to_date
    archived = (Date.today.year - date.year) > 2
    super && archived
  end
end
