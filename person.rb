require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

class Person < Nameable
  def initialize(age, name, parent_permision = `true`)
    super()
    @id = generate_unique_id
    @age = age
    @name = name
    @parent_permision = parent_permision
    @rentals = []
  end

  attr_reader :id
  attr_accessor :name, :age, :parent_permision, :rentals

  def of_age?
    @age >= 18
  end

  private :of_age?

  def can_use_services?
    of_age? || @parent_permission
  end

  def generate_unique_id
    rand(1..1000)
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(book, date, self)
  end
end
