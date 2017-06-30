@sample_input = ["20\n", "0 ab\n", "6 cd\n", "0 ef\n", "6 gh\n", "4 ij\n", "0 ab\n", "6 cd\n", "0 ef\n", "6 gh\n", "0 ij\n", "4 that\n", "3 be\n", "0 to\n", "1 be\n", "5 question\n", "1 or\n", "2 not\n", "4 is\n", "2 to\n", "4 the"]

def get_length(array)
  length = array.slice!(0).to_i
end

def split_and_sort(array)
  array.each do |item|
    item.strip!
  end
  length = get_length(array)
  split_up = array.map {|i| i.split(" ")}
  split_up[0..(length/2)-1].each do |array|
    array[1] = "-"
  end
  sorted = split_up.sort
end

def count_sort(array)

end

def join_and_print(array)
  sorted = split_and_sort(array)
  sorted.map { |i| i[1]  }.join(" ")
end

get_length(@sample_input)
count_sort(@sample_input)

puts @sample_input