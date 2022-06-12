class Shift
  attr_reader :message, :key, :offset

  def initialize(message, key, offset)
    @message = message
    @key = key
    @offset = offset
  end

  def alphabet
    ("a".."z").to_a << " "
  end

  def final_shift
    @key.each_with_index.map do |num, index|
      num + @offset[index]
    end
  end

  def forward
    #take final_shift
    #use final to move forward for each letter
require "pry"; binding.pry
  end

end
