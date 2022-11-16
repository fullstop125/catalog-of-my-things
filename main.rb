require_relative './app'

def main
  app = App.new
  app.start_program
end

def list_of_options
  puts "\n"
  puts 'Choose an option by entering a number'
  puts '1- List all books'
  puts '2- List all Music albums'
  puts '3- List all Games'
  puts '4- List all Genres'
  puts '5- List all Labels'
  puts '6- List all Authors'
  puts '7- Add a book'
  puts '8- Add a music album'
  puts '9- Add a game'
  puts '0- Exit'
end

# rubocop:disable Metrics/CyclomaticComplexity
def option(input)
  case input
  when '1'
    list_all_books
  when '2'
    list_all_albums
  when '3'
    list_all_games
  when '4'
    list_all_genres
  when '5'
    list_all_labels
  when '6'
    list_all_authors
  when '7'
    add_new_book_details
  when '8'
    add_new_album_details
  when '9'
    add_new_game_details
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
main
