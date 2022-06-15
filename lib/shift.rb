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
    @message.downcase.chars.each_with_index.map do |letter, index|
      if alphabet.index(letter).nil?
        letter
      else
        final_shift_index = index % 4 #index to use for final_shift
        shift_to_use = final_shift[final_shift_index] #number to add to current letter
        new_index = (shift_to_use + alphabet.index(letter)) % 27 #gives you index for the encrypted letter
        alphabet[new_index]
      end
    end.join
  end

  def backwards
    @message.downcase.chars.each_with_index.map do |letter, index|
      if alphabet.index(letter).nil?
        letter
      else
        final_shift_index = index % 4 #index to use for final_shift
        shift_to_use = -(final_shift[final_shift_index]) #number to add to current letter
        new_index = (shift_to_use + alphabet.index(letter)) % 27 #gives you index for the encrypted letter
        alphabet[new_index]
      end
    end.join
  end
end
