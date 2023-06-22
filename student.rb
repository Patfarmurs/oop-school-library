require_relative 'person'

class Student < Person
  def initialize(age, classroom, name, parent_permision = `true`)
    super(age, name, parent_permision)
    @classroom = classroom
    @classroom.add_student(self)
  end

  attr_accessor :classroom

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
