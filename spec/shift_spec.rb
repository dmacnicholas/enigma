require './spec_helper'

RSpec.describe Shift do
  before :each do
    @shift = Shift.new
  end

  it 'exists' do
    expect(@shift).to be_a(Shift)
  end
end  
