# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/unit'

# Unit Test
class TestSort < Minitest::Test

  def setup
    array = ['Ruby','Java','Go','Hive','Perl','C#']
    @so = array.sort!
    @so2 = array.sort
    @so3 = array.sort_by
  end

  def test_new
    assert_equal @so,@so2
  end

  def test_up_should_be_array
    assert_kind_of Array, @so
    assert_instance_of Array, @so
    assert_kind_of Array, @so2
    assert_instance_of Array, @so2
  end

  def test_up_should_be_enumerator
    assert_kind_of Enumerator, @so3
    assert_instance_of Enumerator, @so3
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
