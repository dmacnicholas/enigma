class Key
attr_reader :key
  def initialize(key)
    @key = key
  end

  def key_generator
    key.chars.each_cons(2).map do |combo|
      combo.join.to_i
    end
  end

  def random_key_generator
    random_key = '%05d' % rand(5 ** 5)
    random_key.chars.each_cons(2).map do |combo|
      combo.join.to_i
    end
  end
end
