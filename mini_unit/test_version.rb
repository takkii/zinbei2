# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/unit'
require File.join(File.dirname(__FILE__), '../lib/zinbei/version')

# Unit Test
class TestVersion < Minitest::Test

  def setup
    @standard_versions = Zinbei::VERSION
    @next_version = '3.0.0'
  end

  def test_new
    refute_equal(@standard_versions, @next_version)
    assert_operator(@standard_versions, :<, @next_version)
  end

  def test_version_should_be_string
    assert_kind_of String, @standard_versions
    assert_instance_of String, @next_version
  end

  def test_version_should_be_string2
    assert_kind_of String, @standard_versions
    assert_instance_of String, @next_version
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
