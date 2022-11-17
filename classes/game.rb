require './item'
require 'date'

class Game < Item

  def initialize(game_name, publish_date, multiplayer, last_played_at)
    super(publish_date)
    @game_name = game_name
    @multiplayer = multiplayer
    @last_played_at = Date.parse last_played_at
  end

  def can_be_archived?
    two_years_ago = Date.today - 730
    super && (two_years_ago>@last_played_at)
  end

end