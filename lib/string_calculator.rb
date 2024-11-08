class StringCalculator
  def self.add(input)
    return 0 if input.empty?
   
    number = input.scan(/[0-9,-]+/)
    number_1  = number.join(",").split(",").map(&:to_i)
    negatives = number_1.select { |n| n < 0 }
    if !negatives.any?
    number_1.sum 
    else
      raise "negative numbers not allowed: #{negatives.join(', ')}"
    end
  end
end
