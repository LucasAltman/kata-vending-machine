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
	def test_VendingMachine_Is_Of_Class_VendingMachine
		puts "Creating new VendingMachine object and asserting its class is 'VendingMachine'"
		assert_equal VendingMachine, @object.class
	end
end



