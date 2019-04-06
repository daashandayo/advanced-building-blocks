# Enumerable module
module Enumerable
  def my_each
    for i in self
      yield(i)
    end
    self
  end

  def my_each_with_index
    (0..length - 1).my_each do |x|
      yield(self[x], x)
    end
    self
  end

  def my_select
    arr = []
    my_each do |x|
      arr << x if yield(x)
    end
    arr
  end

  def my_all?
    status = true
    my_each do |x|
      return !status unless yield(x)
    end
    status
  end

  def my_any?
    status = false
    my_each do |x|
      return !status if yield(x)
    end
    status
  end

  def my_none?
    status = true
    my_each do |x|
      return !status if yield(x)
    end
    status
  end

  def my_count
    n = 0
    my_each { n += 1 }
    n
  end

  def my_inject(memo = self[0])
    my_each do |x|
      memo = yield(memo, x)
    end
    memo
  end
end
