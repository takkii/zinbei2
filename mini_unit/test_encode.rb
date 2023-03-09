# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/unit'

# Unit Test
class TestEncode < Minitest::Test

  def setup
    @str = '日本語文字列を確認'
    @utf8_str = @str.encode('UTF-8')
  end

  def test_new
    assert_equal @str, @utf8_str
  end

  def test_up_should_be_string
    assert_kind_of String, @str
    assert_instance_of String, @str
  end

  def test_up_should_be_string2
    assert_kind_of String, @utf8_str
    assert_instance_of String, @utf8_str
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
