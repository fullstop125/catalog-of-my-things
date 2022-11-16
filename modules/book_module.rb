module BookModule
  def add_book
    puts 'Please enter the publisher of the book'
    publisher = gets.chomp.to_s
    puts 'Please enter the cover state of the book (good/bad)'
    cover_state = gets.chomp.to_s
    puts 'Please enter the publish date of the book'
    publish_date = gets.chomp.to_i
    puts 'Please enter the label of the book'
    title = gets.chomp.to_s
    puts 'Please enter the color of the label'
    color = gets.chomp.to_s
    label = Label.new(title, color)
    book = Book.new(publisher, cover_state, publish_date)
    puts 'book created successfully'
    json = JSON.generate(ItemStructure.new({ publisher: publisher, cover_state: cover_state, publish_date: publish_date,
                                             label: label.title, color: label.color }))
    @books.push(json)
    File.write('books.json', @books)
  end

  def label_list
    label_data = File.read('books.json')
    @books = JSON.parse(File.read('books.json')) if File.exist?('books.json') && File.read('books.json') != ''
    if @books.length.zero?
      puts 'No available labels'
    else
      @books.each_with_index do |book, index|
        book = JSON.parse(book, create_additions: true)
        puts "#{index + 1} label: #{book.item['label']}"
      end
    end
  end

  def list_all_books
    book_data = 'books.json'
    @books = JSON.parse(File.read('books.json')) if File.exist?('books.json') && File.read('books.json') != ''
    if @books.length.zero?
      puts 'No available books'
    else
      @books.each_with_index do |book, index|
        book = JSON.parse(book, create_additions: true)
        puts "#{index + 1} cover_state: #{book.item['cover_state']},
        label: #{book.item['label']}, published on: #{book.item['publish_date']}"
      end
    end
  end
end
