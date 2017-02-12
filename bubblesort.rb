
def bubble_sort_by(array)
  array.each do
    largest_to_end(array,&Proc.new)
  end
end


def bubble_sort(array)
  array.each do
    largest_to_end(array){|left,right|  right.to_i- left.to_i}
  end
end


def largest_to_end(array)
  index = 0
  until index >= (array.size-1) do
    if yield(array[index],array[index+1]) < 0
      swap_elements(array, index, index+1)
    end
    index = index + 1
  end
end

def swap_elements(array,index1, index2)
  array[index1], array[index2] = array[index2], array[index1]
end


puts bubble_sort([4,3,78,2,0,2]).inspect

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  right.length - left.length
end
