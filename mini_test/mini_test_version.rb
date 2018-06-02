# frozen_string_literal: true

require 'minitest/autorun'
require_relative File.join(File.dirname(__FILE__), '../lib/zinbei/version')

class VersionTest < Minitest::Test
  def test_version
   assert_equal Zinbei::VERSION, '2.0.1'
  end
end