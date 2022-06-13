class Key
attr_reader :key
  def initialize(key = random_key)
    @key = key
  end

  def key_generator
    key.chars.each_cons(2).map do |combo|
      combo.join.to_i
    end
  end

  def random_key
    '%06d' % rand(5 ** 5)
  end
end
