module Library 
  class Library
    attr_accessor :books, :orders, :authors, :readers

    def initialize(books, orders, authors, readers)
      @books, @orders, @authors, @readers = books, orders, authors, readers
    end

    def who_often_takes_a_book
      amateur = popular_objects(@readers)[0]
      write_to_file 'who_often_takes_a_book', "#{amateur.name} often takes all the books in our library."
      amateur
    end

    def most_popular_book
      book = popular_objects(@books)[0]
      write_to_file 'most_popular_book', "The most popular book in our library is:\n#{book.to_s}"
      book
    end

    def three_most_popular_books
      books = popular_objects(@books)
      write_to_file 'three_most_popular_books', "Three most popular books:\n\n1. #{books[0].to_s}\n\n2. #{books[1].to_s}\n\n3. #{books[2].to_s}"
      books
    end

    private
    def popular_objects objects
      objects.each{|object| object.orders_counter = 0}
      @orders.each do |order|
        objects.each do |object|
          object.orders_counter += 1 if order.send("#{object.class.name.split('::').last.downcase}") == object
        end
      end
      objects.sort{|a, b| a.orders_counter <=> b.orders_counter}.reverse
    end

    def write_to_file file_name, text
      File.open("#{file_name}.txt", 'w'){|file| file.write text}
    end
  end
end