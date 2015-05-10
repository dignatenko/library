module Library
  class Book
    attr_accessor :title, :author, :orders_counter

    def initialize(title, author)
  	  @title, @author = title, author
  	  @orders_counter = 0
    end

    def to_s
      "Title: #{@title}\nAuthor name: #{@author.name}"
    end

  end
end