require_relative './modules/preserver_module'
require_relative './modules/music_album_module'
require_relative './classes/music_album'
require_relative './classes/genre'
require_relative './modules/book_module'
require_relative './classes/label'
require_relative './classes/book'
require 'json'
require 'json/add/struct'

ItemStructure = Struct.new(:item)

class App
  include PreserverModule
  include PreserverModule
  include MusicModule

  def initialize
    @albums = []
    @genres = []

    load_data
  end

  include BookModule

  def books
    puts '
    1. Add book
    2. List all labels
    3. List all books'
    choice = gets.chomp.to_i
    case choice
    when 1
      add_book
    when 2
      label_list
    when 3
      list_all_books
    end
  end

  def start_program
    puts 'Welcome to the catalog app'
    until list_of_options
      input = gets.chomp
      if input == '0'
        preserve_files
        puts 'Thank you for using our app'
        break
      end
      option(input)
    end
  end

  def list_all_albums
    puts "\nNote: No albums available." if @albums.empty?

    puts "\nALL ALBUMS\n\n"
    puts "\Genre \t| On spotify? \t| Album Name \t| Publish Date"
    @albums.each do |album|
      puts "#{album['genre'].to_s.strip} \t| #{album['on_spotify?']
    .to_s.strip.rjust(10)} \t| #{album['album_name'].to_s.strip.rjust(10)} \t| #{album['publish_date']
    .to_s.strip.rjust(10)}"
      puts "\n---------------------------------------------------"
    end
  end

  def list_all_genres
    puts "\nNote: No genres available." if @genres.empty?
    @genres.each do |genre|
      puts genre['genre_name'].to_s.strip
      puts "\n----------------------------"
    end
  end

  def add_album(album_name, publish_date, genre_name, on_spotify)
    new_album_instance = MusicAlbum.new(on_spotify, album_name, publish_date)
    new_genre_instance = Genre.new(genre_name)
    new_album_instance.genre = new_genre_instance

    hash = {
      'album_name' => new_album_instance.name,
      'publish_date' => new_album_instance.publish_date,
      'on_spotify?' => new_album_instance.on_spotify,
      'genre' => new_genre_instance.name
    }

    genre_hash = {
      'genre_name' => new_genre_instance.name
    }

    @albums << hash
    @genres << genre_hash
  end

  def preserve_files
    save_data_as_json(@albums, 'albums')
    save_data_as_json(@genres, 'genres')
  end

  private

  def load_data
    @albums = load_file('albums')
    @genres = load_file('genres')
  end
end
