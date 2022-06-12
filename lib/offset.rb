require 'time'
class Offset
  attr_reader :date

  def initialize(date = date_generator)
    @date = date
  end

  def date_generator
    Time.now.strftime("%m%d%y")
  end

  def offset_calc
    date_squared = @date.to_i ** 2
    last4_digits = date_squared.to_s.chars.last(4).map do |num|
      num.to_i

    end
  end


end
