require './spec_helper'

RSpec.describe Engima do
  before :each do
    @enigma = Enigma.new
  end

  it 'exists' do
    expect(@enigma).to be_a(Engima)
  end
end
