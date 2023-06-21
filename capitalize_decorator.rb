require_relative 'decorator'

class CapitalizeDecorator < NameDecorator
  def correct_name
    @nameable.correct_name.Capitalize
  end
end
