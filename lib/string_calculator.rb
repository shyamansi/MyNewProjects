class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    number = input.scan(/[0-9]+/)
    number_1  = number.join(",").split(",").map(&:to_i)
    number_1.sum 
   
  end
end
