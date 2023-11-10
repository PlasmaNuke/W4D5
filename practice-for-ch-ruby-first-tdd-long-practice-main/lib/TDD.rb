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

class Array
    def two_sum
        raise "Invalid arguments" unless self.all? { |el| el.is_a?(Integer) || el.is_a?(Float) }
        indices = []
        self.each_with_index do |el1, i1|
            self.each_with_index do |el2, i2|
                if i2 > i1 && el1 + el2 == 0
                    indices << [i1, i2]
                end
            end
        end
        indices
    end
end
