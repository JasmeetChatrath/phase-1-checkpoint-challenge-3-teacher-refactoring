# require_relative 'teacher.rb'
# require_relative 'apprentice_teacher.rb'

class School
  attr_reader :phase, :age
  attr_accessor :name

  def initialize(options = {})
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

  def offer_high_five
    "High five!"
  end

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def salary=(new_salary)
    # super
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    # super
    @salary += raise
  end

end


#I think what I did wrong is starting just from the teacher and appretice classes.  I should've looked at all three and refactored the similarities.  Then I should've moved down the heirarchy and found the next set of similarities.
