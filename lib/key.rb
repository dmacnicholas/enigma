class Key
attr_reader :key
  def initialize
    @key = key
  end


  def key_generator
    random_key = '%06d' % rand(5 ** 5)
    random_key.chars.each_cons(2).map do |combo|
      combo.join.to_i
    end
  end
end
