require 'test/unit'

class TestUpDown < Test::Unit::TestCase

  def setup
    str = 'object oriented language'
    str2 = 'RUBY_VERSION_IS'
    @upup = str.upcase
    @upup2 = str.upcase!
    @downdown = str2.downcase
    @downdown2 = str2.downcase!
  end

  def test_new
    assert_equal @upup, @upup2
    assert_equal @downdown, @downdown2
  end

  def test_up_should_be_string
    assert_kind_of String, @upup
    assert_instance_of String, @upup
    assert_kind_of String, @upup2
    assert_instance_of String, @upup2
  end

  def test_down_should_be_string
    assert_kind_of String, @downdown
    assert_kind_of String, @downdown2
    assert_instance_of String, @downdown
    assert_instance_of String, @downdown2
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