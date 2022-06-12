require './spec_helper'

RSpec.describe Offset do
  before :each do
    @offset = Offset.new
  end

  it 'exists' do
    expect(@offset).to be_a(Offset)
  end

  it 'can return a date as DDMMYY format' do
    expect(@offset.date.length).to eq(6)
  end

  it 'can return an array of the offset values' do
    expect(@offset.offset_calc.length).to eq(4)
  end
end
