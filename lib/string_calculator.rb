class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    number  = input.gsub("\n",",").split(",").map(&:to_i)
    number.sum 
  end
end
