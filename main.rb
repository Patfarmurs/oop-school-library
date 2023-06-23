require './app'

class Main
  def initialize
    @app = App.new
  end

  puts 'Welcome to School Library App!'
  # rubocop:disable Metrics/CyclomaticComplexity
  def run_option
    loop do
      display_menu_options
      option = gets.chomp

      case option
      when '1' then list_all_books
      when '2' then list_all_people
      when '3' then create_person
      when '4' then create_book
      when '5' then create_rental
      when '6' then list_rentals
      when '7'
        puts 'Thank you for using our library ¯\^-^/¯'
        return
      else
        puts 'Please enter a number between 1 and 7'
      end
    end
  end

  # rubocop:enable Metrics/CyclomaticComplexity
  def display_menu_options
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  def list_all_books
    @app.list_all_books
  end

  def list_all_people
    @app.list_all_people
  end

  def create_person
    @app.create_person
  end

  def create_book
    @app.create_book
  end

  def create_rental
    @app.create_rental
  end

  def list_rentals
    @app.list_rentals
  end
end

main = Main.new
main.run_option
