require 'time'
class Offset
  attr_reader :date

  def initialize(date = date_generator)
    @date = date || date_generator
  end

  def date_generator
    Time.now.strftime("%d%m%y")
  end

  def offset_calc
    date_squared = @date.to_i ** 2
    date_squared.to_s.chars.last(4).map do |num|
      num.to_i
    end
  end
end
