#
#
#Tests for:
#Vending Machine Kata!! 
#Author: Lucas Altman
#
#
#
#
#
#
#
#
#
#
#
require 'minitest/autorun'
require '../src/VendingMachine.rb'


class TestVendingMachine < MiniTest::Test
	def setup
		@object = VendingMachine.new
	end
	#test whether its an object of class VendingMachine!
	def test_VendingMachine_Is_Of_Class_VendingMachine
		puts "Creating new VendingMachine object and asserting its class is 'VendingMachine'"
		assert_equal VendingMachine, @object.class
	end
	#test whether you can insert a coin; in this case we'll insert a nickel, a dime, and a quarter, and a penny
	def test_VendingMachine_Accepts_Coins
		puts "inserting coin with the weight and size of a quarter; weight in grams, size in mm"
		@quarter_VendMach = VendingMachine.new
		@quarter_VendMach.insertCoin(5.670,24.26)
		assert_equal "$0.25", @quarter_VendMach.coinDisplay
	end
end



