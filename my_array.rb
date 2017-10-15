class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.size
  end

  def reverse
    @array.reverse!
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort.reverse
  end

  def asc
     @array.sort
  end

  def odd
    @array.find_all{ |elem| elem.odd? }
  end

  def multiple_to_three
    @array.find_all{ |elem| elem % 3==0 }

  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.map { |e| e.to_f/10  }
  end

  def chars
    @array.collect{ |e| ('a'...'z').to_a[e-1].to_sym}
  end

  def switch
    min = @array.min
   max = @array.max
   min_index = @array.index(min)
   max_index = @array.index(max)
   dup_array = @array.dup
   dup_array[min_index] = max
   dup_array[max_index] = min
   dup_array
  end

  def before_min
    min = @array.min
      min_index = @array.index(min)
      @array.take(min_index)
  end

  def three_smallest
     @array.sort.take(3)
  end
end

array = [1,2, 3,3,5, 4, 8,5,2,8,7,5]
a = MyArray.new(array)
puts "size=#{a.size}"
puts "revers=#{a.reverse}"
puts "max=#{a.max}"
puts "min=#{a.min}"
puts "desc=#{a.desc}"
puts "asc=#{a.asc}"
puts "odd=#{a.odd}"
puts "multiple_to_three=#{a.multiple_to_three}"
puts "uniq=#{a.uniq}"
puts "devide_on_ten=#{a.devide_on_ten}"
puts "chars=#{a.chars}"
puts "switch=#{a.switch}"
puts "before_min=#{a.before_min}"
puts "three_smallest=#{a.three_smallest}"
