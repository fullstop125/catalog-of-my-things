module BookModule
  def capture_input(request_text)
    print "#{request_text}: "
    gets.chomp
  end

  def add_new_book_details
    add_new_author_details
    puts "\n-------------------------------"
    puts "\nENTER BOOK DETAILS\n\n"

    title = capture_input('Input Book name')
    publisher = capture_input('Input publisher name')
    publish_date = capture_input('Input published date[yyyy/mm/dd]')
    cover_state = capture_input('Input cover state eg:(good or bad)')

    add_book([title, publisher, publish_date, cover_state])
    add_new_label_details
  end

  def add_new_label_details
    puts "\nENTER LABEL DETAILS\n\n"

    title = capture_input('Input label title(Gift, New, e.t.c)')
    color = capture_input('Input label color')

    add_label([title, color])
    puts "\nNew Book and Label Added!"
    puts "\n-------------------------------"
  end

  def add_new_author_details
    puts "\n-------------------------------"
    puts "\nENTER AUTHOR DETAILS\n\n"

    first_name = capture_input('Input author First name')
    last_name = capture_input('Input last name')

    add_author([first_name, last_name])
    puts "\n New Author Added"
    puts "\n-------------------------------"
  end
end
