require './spec_helper'

RSpec.describe Offset do
  before :each do
    @offset = Offset.new("040895")
  end

  it 'exists' do
    expect(@offset).to be_a(Offset)
  end

  it 'can return a date as DDMMYY format' do
    expect(@offset.date.length).to eq(6)
    expect(@offset.date_generator).to be_a(String)
  end

  it 'can generate todays date' do
    expect(@offset.date.length).to eq(6)
    expect(@offset.date_generator).to be_a(String)
  end

  it 'can return an array of the offset values' do
    expect(@offset.offset_calc.length).to eq(4)
    expect(@offset.offset_calc).to eq([1, 0, 2, 5])
  end
end
