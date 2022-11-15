module BookModule
  def capture_input(request_text)
    print "#{request_text}: "
    gets.chomp
  end

  def add_new_book_details
    puts "\n-------------------------------"
    puts "\nENTER BOOK DETAILS\n\n"

    publisher = capture_input('Input publisher name')
    publish_date = capture_input('Input published date[yyyy/mm/dd]')
    cover_state = capture_input('Input cover state eg:(good or bad)')

    add_book([publisher, publish_date, cover_state])
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
end
