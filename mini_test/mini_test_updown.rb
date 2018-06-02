# frozen_string_literal: true

require 'minitest/autorun'

class UpdownTest < Minitest::Test
  def test_updown
    str = 'ruby_version_is'
    str2 = 'RUBY_VERSION_IS'
    up = str.upcase
    assert_equal up,str2
  end
end