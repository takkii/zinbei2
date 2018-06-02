# frozen_string_literal: true

require 'minitest/autorun'

class EncodeTest < Minitest::Test
  def test_encode
   assert_equal '日本語文字列を確認','日本語文字列を確認'.encode('UTF-8')
  end
end