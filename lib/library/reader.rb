module Library
  class Reader
    attr_accessor :name, :email, :city, :street, :house, :orders_counter

    def initialize(name, email, city, street, house)
      @name, @email, @city, @street, @house = name, email, city, street, house
  	  @orders_counter = 0
    end

    def to_s
      "Name: #{@name}\nEmail: #{@email}\nCity: #{@city}\nStreet #{@street}\nHouse: #{@house}"
    end

  end
end