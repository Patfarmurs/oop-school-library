class Person
  def initialize(age, name, parent_permision = `true`)
    @id = generate_unique_id
    @age = age
    @name = name
    @parent_permision = parent_permision
  end

  attr_reader :id
  attr_accessor :age, name

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
end
