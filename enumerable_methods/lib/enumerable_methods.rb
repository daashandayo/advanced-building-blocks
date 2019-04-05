# Enumerable module
module Enumerable
  def my_each
    for i in self
      yield(i)
    end
    return self
  end

  def my_each_with_index
    (0..self.length - 1).my_each do |x|
      yield(self[x], x)
    end
    return self
  end

  def my_select
    arr = []
    self.my_each do |x|
      arr << x if yield(x)
    end
    arr
  end

  def my_all?
    status = true
    self.my_each do |x|
      return !status unless yield(x)
    end
    status
  end

  def my_any?
    status = false
    self.my_each do |x|
      return !status if yield(x)
    end
    status
  end

  def my_none?
    status = true
    self.my_each do |x|
      return !status if yield(x)
    end
    status
  end

  def my_count
    n = 0
    self.my_each { n += 1 }
    n
  end
end
