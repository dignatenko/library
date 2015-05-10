require "./lib/library/version"
Dir["./lib/library/*.rb"].each {|file| require file }

module Library
  author1 = Author.new('Isaac Asimov', 'Was born in 1920. Died in 1992.')
  author2 = Author.new('Lem Stanislav', 'Was born in 1921. Died in 2006.')
  author3 = Author.new('Reynolds Alastair', 'Was born in 1966.')
  author4 = Author.new('Arthur C. Clarke', 'Was born in 1917. Died in 2008.')
  author5 = Author.new('Stephen King', 'Was born in 1947.')
  reader1 = Reader.new('Andrew', 'andrew@gmail.com', 'London', "Street1", "5")
  reader2 = Reader.new('Dmitry', 'dmitry@gmail.com', 'Dnipropetrovsk', "Street2", "25")
  reader3 = Reader.new('Aleksei', 'aleksei@gmail.com', 'Lviv', "Street3", "15")
  reader4 = Reader.new('Olga', 'olga@gmail.com', 'Paris', "Street4", "10")
  reader5 = Reader.new('Sergei', 'sergei@gmail.com', 'Berlin', "Street5", "9")
  book1 = Book.new('The Green Mile', author5)
  book2 = Book.new('It', author5)
  book3 = Book.new('The Sentinel', author4)
  book4 = Book.new('The Other Side of the Sky', author4)
  book5 = Book.new('Revelation Space', author3)
  book6 = Book.new('Terminal World', author3)
  book7 = Book.new('Solaris', author2)
  book8 = Book.new('Eden', author2)
  book9 = Book.new('Foundation', author1)
  book10 = Book.new('Nemesis', author1)
  order1 = Order.new(book1, reader1, Time.new)
  order2 = Order.new(book3, reader1, Time.new)
  order3 = Order.new(book2, reader2, Time.new)
  order4 = Order.new(book6, reader2, Time.new)
  order5 = Order.new(book6, reader3, Time.new)
  order6 = Order.new(book10, reader3, Time.new)
  order7 = Order.new(book1, reader4, Time.new)
  order8 = Order.new(book2, reader4, Time.new)
  order9 = Order.new(book5, reader5, Time.new)
  order10 = Order.new(book6, reader5, Time.new)
  order11 = Order.new(book10, reader1, Time.new)
  order12 = Order.new(book8, reader1, Time.new)
  order13 = Order.new(book4, reader3, Time.new)
  order14 = Order.new(book3, reader5, Time.new)
  order15 = Order.new(book4, reader4, Time.new)

  books = []
  books<<book1<<book2<<book3<<book4<<book5<<book6<<book7<<book8<<book9<<book10
  authors = []
  authors<<author1<<author2<<author3<<author4<<author5
  orders = []
  orders<<order1<<order2<<order3<<order4<<order5<<order6<<order7<<order8<<order9<<order10<<order11<<order12<<order13<<order14<<order15
  readers = []
  readers<<reader1<<reader2<<reader3<<reader4<<reader5
  library = Library.new(books, orders, authors, readers)

  # Chois menu.
  while true
    i = 0
    puts '1 - Who often takes a book'
    puts '2 - What is the most popular book'
    puts '3 - How many people ordered one of the three most popular books'
    puts '0 - Exit'
    i = gets.to_i
    if i == 0
      return
    elsif i == 1
      amateur_reader = library.who_often_takes_a_book
      puts "#{amateur_reader.name} often takes all the books in our library."
    elsif i == 2
      super_book = library.most_popular_book
      puts "The most popular book in our library is:\n#{super_book.to_s}"
    elsif i == 3
      popular_books = library.three_most_popular_books
      puts "Three most popular books:\n1. #{popular_books[0].to_s}\n2. #{popular_books[1].to_s}\n3. #{popular_books[2].to_s}"
    else
      puts 'Error! Select the number of interval 1 - 3, or 0 for exit.'
    end
  end
end
