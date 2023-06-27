class Book
  attr_accessor :title, :author, :rentals, :rented

  def initialize(title, author)
    @title = title
    @author = author
    @rented = false
    @rentals = []
  end

  def add_rentals(person, date)
    rental = Rental.new(date, self, person)
    @rentals << rental
    rental
  end
end
