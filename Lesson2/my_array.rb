class MyArray

  def initialize(arr)
    @arr = arr
    @size = arr.size
  end

  def each
    i = 0
    n = @size - 1
    while i <= n
      yield @arr[i]
      i += 1
    end

  end

end

an_array = MyArray.new([1,2,3])

an_array.each do |a|
  puts a
end