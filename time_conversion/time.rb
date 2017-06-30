def army_conversion(time)
  suffix = time.slice!(-2..-1)
  array = time.split(":")
  hours = array[0].to_i
  if suffix == "PM" && hours != 12
    hours += 12
    array[0] = hours
  elsif suffix == "AM" && hours == 12
    hours = "00"
    array[0] = hours
  end
  time = array.join(":")
end