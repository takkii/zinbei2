# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/unit'

# Unit Test
class TestMethod < Minitest::Test

  def setup
    #method test add.
    ary = []
    ary2 = %w[]

    1.step(10,3) do |i|
      ary << i
      ary2 << i
    end

    @step = ary
    @step2 = ary2
  end

  def test_new
    assert_equal @step, @step2

  end

  def test_step_should_be_array
    assert_kind_of Array, @step
    assert_instance_of Array, @step
  end

  def test_step_should_be_array2
    assert_kind_of Array, @step2
    assert_instance_of Array, @step2
  end

  def test_nil_variable
    # assert_nil
  end

  def test_match
    # assert_match
  end

  def teardown
# database network test add.
  end

end
