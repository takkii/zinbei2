# frozen_string_literal: true

require 'minitest/autorun'

class MethodTest < Minitest::Test
  def test_method
    ary = []
    ary2 = %w[]

    1.step(10,3) do |i|
      ary << i
      ary2 << i
   assert_equal ary,ary2
   end
  end
end