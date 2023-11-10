def my_uniq(arr)
  raise "Invalid argument" if !arr.is_a?(Array)
  result = []

  arr.each do |el|
    if !result.include?(el)
      result << el
    end
  end
  result
end