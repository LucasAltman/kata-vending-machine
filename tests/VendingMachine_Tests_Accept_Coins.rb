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
#This is just for the Accept Coin feature
#
#
#
#
#
require 'minitest/autorun'
require '../src/VendingMachine.rb'


class TestVendingMachine < MiniTest::Test
	def setup
		@testVendMach = VendingMachine.new
	end
	#test whether its an object of class VendingMachine!
	def test_VendingMachine_Is_Of_Class_VendingMachine
		puts "Creating new VendingMachine object and asserting its class is 'VendingMachine'"
		assert_equal VendingMachine, @testVendMach.class
	end
	#test whether you can insert a coin; in this case we'll insert a nickel, a dime, and a quarter, and a penny
	def test_VendingMachine_Accepts_Coins_Quarter
		puts "inserting coin with the weight and size of a quarter; weight in grams, diameter in mm, thickness in mm "
		@testVendMach.insertCoin(5.670,24.26,1.75)
		assert_equal "$0.25", @testVendMach.coinDisplay
	end
	def test_VendingMachine_Accepts_Coins_Nickel
		puts "inserting coin with the weight and size of a nickel; weight in grams, diameter in mm, thickness in mm"
		@testVendMach.insertCoin(5,21.21,1.95)
		assert_equal "$0.30", @testVendMach.coinDisplay
	end
	def test_VendingMachine_Accepts_Coins_Dimes
		puts "inserting coin with the weight and size of a dime; weight in grams, size in mm, thickness in mm"
		@testVendMach.insertCoin(2.268,17.91,1.35)
		assert_equal "$0.40", @testVendMach.coinDisplay
	end
	def test_VendingMachine_Accepts_Coins_Reject_Pennies
		puts "inserting coin with the weight and size of a penny; weight in grams, size in mm; expecting it to be rejected"
		@testVendMach.insertCoin(2.5,19.05,1.52)
		assert_equal "$0.40", @testVendMach.coinDisplay
		assert_equal "1 rejected coin, 0 quarters, 0 nickels, 0 dimes", @testVendMach.coinReturn
	end
end




