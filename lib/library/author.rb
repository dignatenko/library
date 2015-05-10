module Library
  class Author
    attr_accessor :name, :biography

    def initialize(name, biography)
  	  @name, @biography = name, biography
    end

    def to_s
      "Name: #{name}\nBiography: #{@biography}"
    end
   
  end
end