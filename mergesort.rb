def merge_sort (array)
  #puts array.inspect
  return array[0..0] if array.size == 1

    arrayl=merge_sort(array[0...(array.size/2)])
    arrayr=merge_sort(array[(array.size/2)..-1])


    new_array = []

      arrayl.each do |e|
        while arrayr.size > 0 && e > arrayr[0]
          new_array << arrayr.shift
        end
        new_array << e
      end
      new_array += arrayr
      #puts "Newarray is : #{new_array}"
      return new_array


end

puts "sort [1,3,2,9,6,10,5,4,7,9,8,20,15] with recursive merge  is : #{merge_sort([1,3,2,9,6,10,5,4,7,9,8,20,15])}  "
