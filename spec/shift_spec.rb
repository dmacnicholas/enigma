require './spec_helper'

RSpec.describe Shift do
  before :each do
    @offset = Offset.new("040895").offset_calc
    @key = Key.new("02715").key_generator
    @message = "hello world"
    @shift = Shift.new(@message, @key, @offset)

  end

  it 'exists' do
    expect(@shift).to be_a(Shift)
  end

  it 'can return an array of the letters of the alphabet' do
    expect(@shift.alphabet.length).to eq(27)
  end

  it 'can return the values of the final shift' do
    expect(@shift.final_shift).to eq([3, 27, 73, 20])
  end

  it 'can return the new encrypted message'
    expect(@shift.forward).to eq("keder ohulw")
  end
end
