require './spec_helper'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new
  end

  it 'exists' do
    expect(@enigma).to be_a(Enigma)
  end

  it 'can return todays date as DDMMYY format' do
    expect(@enigma.todays_date).to be_a(String)
    expect(@enigma.todays_date.length).to eq(6)
  end

  it 'can encrypt a message with a key and date' do
    @input = @enigma.encrypt("hello world", "02715", "040895")
    @output = {encryption: "keder ohulw", key: "02715", date: "040895"}
    expect(@input).to eq(@output)
  end  
end
