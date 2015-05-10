module Library
  class Order
    attr_accessor :book, :reader, :date

    def initialize(book, reader, date)
  	  @book, @reader, @date = book, reader, date
    end

    def to_s
      "Title: #{@book.to_s}\nAuthor: #{@reader.to_s}\nTime: #{@date}"
    end

  end
end