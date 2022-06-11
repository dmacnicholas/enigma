class Key
attr_reader :key
  def initialize(key)
    @key = key
  end

  def generate
    key.chars.each_cons(2).map do |combo|
      combo.join
    end
  end

end
