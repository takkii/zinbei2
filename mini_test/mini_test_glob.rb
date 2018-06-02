# frozen_string_literal: true

require 'minitest/autorun'

class GlobTest < Minitest::Test
  def test_glob
   assert_equal Dir.glob('./test/*.rb'),Dir.glob('./test/*')
  end
end