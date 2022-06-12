require './spec_helper'

RSpec.describe Key do
  before :each do
    @key = Key.new("02715")
  end

  it 'exists' do
    expect(@key).to be_a(Key)
  end

  it 'returns a key' do
    expect(@key.key).to eq("02715")
  end

  it 'can generate a key' do
    expect(@key.key_generator.length).to eq(5)
  end
end
