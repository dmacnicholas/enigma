require './spec_helper'

RSpec.describe Offset do
  before :each do
    @offset = Offset.new("August 4, 1995")
  end

  it 'exists' do
    expect(@offset).to be_a(Offset)
  end
end
