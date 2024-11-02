class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    number  = input.split(",").map(&:to_i)
    number.sum
  end
end
