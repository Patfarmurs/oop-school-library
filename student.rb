require_relative 'person'

class Student < Person
  def initialize(age, classroom, name, parent_permision = `true`)
    super(age, name, parent_permision)
    @classroom = classroom
  end

  attr_accessor :classroom

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
