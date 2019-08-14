# frozen_string_literal: true

require 'minitest/autorun'

class SortTest < Minitest::Test
  def test_sort
   array = ['Ruby','Java','Go','Hive','Perl','C#']
   assert_equal array.sort,array.sort!
  end
end