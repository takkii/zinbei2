require 'test/unit'

class TestDate < Test::Unit::TestCase

  def setup
    @date = Time.new.strftime('%Y年%m月%d日　%H時%M分%S秒')
    @dates = Time.now.strftime('%Y年%m月%d日　%H時%M分%S秒')
  end

  def test_new
    assert_equal @date, @dates
  end

  def test_date_should_be_string
    assert_kind_of String, @date
    assert_instance_of String, @date
  end

  def test_date_should_be_string2
    assert_kind_of String, @dates
    assert_instance_of String, @dates
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