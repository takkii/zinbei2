# frozen_string_literal: true

require 'minitest/autorun'
require_relative File.join(File.dirname(__FILE__), '../lib/zinbei/version')

class VersionTest < Minitest::Test
  def test_version
    @v1 = Zinbei::VERSION
    @v2 = '3.0.0'

    refute_equal(@v1, @v2)
    assert_operator(@v1, :<, @v2)
  end
end
