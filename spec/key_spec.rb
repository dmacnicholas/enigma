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
    expect(@key.key_generator.length).to eq(4)
    expect(@key.key_generator).to eq([02, 27, 71, 15])
  end

  it 'generates random key if key is nil' do
    expect(Key.new(nil).key).to be_a(String)
  end

  it 'can generate a random key' do
    expect(Key.new.random_key_generator).to be_a(String)
  end
end
