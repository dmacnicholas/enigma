require './spec_helper'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new
  end

  it 'exists' do
    expect(@enigma).to be_a(Enigma)
  end

  it 'can return todays date as DDMMYY format' do
    expect(@enigma.todays_date).to_be(String)
    expect(@enigma.todays_date.length).to eq(6)
  end
end
