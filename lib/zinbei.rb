# frozen_string_literal: true

require 'kconv'

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

class Scan
  def search_text
    puts ''
    one = ARGV[1].toutf8
    open(one) do |f|
      while (str2 = f.gets)
        str = str2.chomp!
        two = ARGV[1].toutf8
        three = /#{two}/o
        utf8_str = str.toutf8

        begin
          if utf8_str.match(three) || {}[:match]
            # active code add.
            printf('%2d : %s', f.lineno, str)
            puts ''
          end
        rescue StandardError
          print ''
        ensure
          print ''
        end
      end

      puts ''
      print 'Did it read to the last of a page ? ... '
      puts f.eof?
    end
  end
end

__END__
