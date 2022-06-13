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
    offset = Offset.new(date)
    key_to_use = Key.new(key)
    shift = Shift.new(message, key_to_use.key_generator, offset.offset_calc).backwards
    {decryption: shift, key: key_to_use.key, date: offset.date}
  end
end
