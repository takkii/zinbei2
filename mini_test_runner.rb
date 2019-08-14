# frozen_string_literal: true

require 'minitest/autorun'

puts ''
puts ' mini_test in filename list...start '.center(60,'-')
puts ''

class MiniFilename

	def mini_find
		puts Dir.glob('./mini_test/*.rb')
	end
end

MiniFilename.new.mini_find

puts ''
puts ' mini_test in filename list...exit '.center(60,'-')
puts ''

module Mini_Test_One

	module_function
	
	def mini_test_version
		require_relative File.join(File.dirname(__FILE__),'mini_test/mini_test_version')
	end
	
	def mini_test_date 
                require_relative File.join(File.dirname(__FILE__),'mini_test/mini_test_date')
        end
        
	def mini_test_encode
                require_relative File.join(File.dirname(__FILE__),'mini_test/mini_test_encode')
        end
        
	def mini_test_glob
                require_relative File.join(File.dirname(__FILE__),'mini_test/mini_test_glob')
        end
        
	def mini_test_method
                require_relative File.join(File.dirname(__FILE__),'mini_test/mini_test_method')
        end
        
	def mini_test_sort
                require_relative File.join(File.dirname(__FILE__),'mini_test/mini_test_sort')
        end
        
	def mini_test_updown
                require_relative File.join(File.dirname(__FILE__),'mini_test/mini_test_updown')
    end
end

Mini_Test_One.mini_test_version
Mini_Test_One.mini_test_date
Mini_Test_One.mini_test_encode
Mini_Test_One.mini_test_glob
Mini_Test_One.mini_test_method
Mini_Test_One.mini_test_sort
Mini_Test_One.mini_test_updown

__END__
