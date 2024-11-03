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
		    it "return sum of two comma-separated numbers" do 
		    	expect(StringCalculator.add("1,6")).to eq(7)
		    end
		    it "return sum of more than two comma-separated numbers" do   
                expect(StringCalculator.add("1,4,5")).to eq(10)
		    end
		    it "handles new line delimeter" do   
		    	expect(StringCalculator.add("5\n2,3")).to eq(10)
		    end
		    it "handles all delimeter like '//;\n1;2'" do   
		    	expect(StringCalculator.add("//;\n1;2")).to eq(3)
		    end
		     it "supports multiple-character custom delimiters" do
                  expect(StringCalculator.add("//[***]\n1***2***3")).to eq(6)
             end

             it "throws an exception for negative numbers" do
                   expect { StringCalculator.add("1,-2,3") }.to raise_error("negative numbers not allowed: -2")
              end
           
		end
end