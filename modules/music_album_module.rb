module MusicModule
  def capture_input(request_text)
    print "#{request_text}: "
    gets.chomp
  end

  def add_new_album_details
    puts "\n-------------------------------"
    puts "\nENTER MUSIC ALBUM DETAILS\n\n"

    album_name = capture_input('Input Music Album Name: ')
    publish_date = capture_input('Input Released Date [yyyy/mm/dd]: ')
    genre = capture_input('Input Genre Name: ')
    on_spotify = capture_input('Is Album on Spotify? [Y/N]: ')

    on_spotify = on_spotify == 'Y' || false

    add_album(album_name, publish_date, genre, on_spotify)

    puts "\nNew Music Album and Genre Added!"
    puts "\n-------------------------------"
  end
end
