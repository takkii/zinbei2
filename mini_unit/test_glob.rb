# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/unit'

# Unit Test
class TestGlob < Minitest::Test

	def setup
		@glob = Dir.glob('./test/*.rb')
		@glob2 = Dir.glob('./test/*')
	end

	def test_new
		assert_equal @glob,@glob2
	end

	def test_glob_should_be_array
		assert_kind_of Array, @glob
		assert_instance_of Array, @glob
	end

	def test_glob2_should_be_array
		assert_kind_of Array, @glob2
		assert_instance_of Array, @glob2
	end

	def test_nil_variable
	#assert_nil
	end

	def test_match
		# assert_match
	end

	def teardown
		#database network test add.
	end

end
