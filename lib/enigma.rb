require 'time'
class Enigma

  def initialize
  end

  def todays_date
    Date.today.strftime("%d%m%y")
  end

  def encrypt(message, key = nil, date = nil)
    @date = date || todays_date
    offset = Offset.new(@date).offset_calc
    key_to_use = Key.new(key).key_generator || Key.new(key).random_key_generator
    shift = Shift.new(message, key_to_use, offset).forward(message)
    {encryption: shift, key: key, date: date}
  end

  def decrypt(message, key = nil, date = nil)
    @date = date || todays_date
    offset = Offset.new(@date).offset_calc
    key_to_use = Key.new(key).key_generator || Key.new(key).random_key_generator
    shift = Shift.new(message, key_to_use, offset).backwards(message)
    {decryption: shift, key: key, date: date}
  end
end
