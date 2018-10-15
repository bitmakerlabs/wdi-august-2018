require 'minitest/autorun'
require 'minitest/pride'
require_relative 'temperature.rb'

class TestTemperature < MiniTest::Test
   # tests go in here
   def test_fah_to_cel_positive
    cel_temp = f_to_c(50)
    expected_cel_temp = 10

    assert_equal(expected_cel_temp, cel_temp)
   end

   def test_fah_to_cel_negative
     cel_temp = f_to_c(-4)
     expected_cel_temp = -20

     assert_equal(expected_cel_temp, cel_temp)
   end

   def test_fah_to_cel_freezing
     cel_temp = f_to_c(32)
     expected_cel_temp = 0

     assert_equal(expected_cel_temp, cel_temp)
   end

   def test_c_to_f_positive
     actual_f_temp = c_to_f(10)
     expected_result = 50

     assert_equal(expected_result, actual_f_temp)
   end

   def test_c_to_f_negative
     actual_f_temp = c_to_f(-20)
     expected_result = -4

     assert_equal(expected_result, actual_f_temp)
   end

   def test_c_to_f_freezing
     actual_result = c_to_f(0)
     expected_result = 32

     assert_equal(expected_result, actual_result)
   end
end





