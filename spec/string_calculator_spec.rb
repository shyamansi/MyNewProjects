require "string_calculator"
require 'spec_helper'
RSpec.describe StringCalculator do    
	describe ".add" do  
		it "return 0 for an empty string" do
		expect(StringCalculator.add("")).to eq(0)
	end
	    it "return number itself for single number input" do  
         expect(StringCalculator.add("1")).to eq(1)
	    end
end
end