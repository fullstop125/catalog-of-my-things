module GameModule
  def capture_input(request_text)
    print "#{request_text}: "
    gets.chomp
  end

  def add_new_game_details
    puts "\n-------------------------------"
    puts "\nENTER GAME DETAILS\n\n"

    game_name = capture_input('Input Game Name: ')
    last_played_at = capture_input('Last Play Date: ')
    multiplayer = capture_input('Multiplayer Game Name: ')
    add_game([game_name, last_played_at, multiplayer])
  end
end
