require './spec_helper'

RSpec.describe Key do
  before :each do
    @shift = Key.new
  end

  it 'exists' do
    expect(@key).to be_a(Key)
  end
end
