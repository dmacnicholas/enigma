require 'time'
require_relative './key'
require_relative './offset'
require_relative './shift'

class Enigma

  def initialize
  end

  def todays_date
    Date.today.strftime("%m%d%y")
  end

  def encrypt(message, key = nil, date = nil)
    offset = Offset.new(date) #.offset_calc
    key_to_use = Key.new(key) #.key_generator
    shift = Shift.new(message, key_to_use.key_generator, offset.offset_calc).forward
    {encryption: shift, key: key_to_use.key, date: offset.date}
  end

  def decrypt(message, key = nil, date = nil)
    date_choice = date || todays_date
    offset = Offset.new(date_choice).offset_calc
    key_to_use = Key.new(key).key_generator || Key.new(key).random_key_generator
    shift = Shift.new(message, key_to_use, offset).backwards
    {decryption: shift, key: key, date: date}
  end
end
