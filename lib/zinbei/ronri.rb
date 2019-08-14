# coding: sjis

# frozen_string_literal: true

require 'kconv'

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Encoding.default_internal = 'SJIS'

class Scan
  def search_text
    puts ''
    one = ARGV[0].tosjis
    open(one) do |f|
      while (str2 = f.gets)
        str = str2.chomp!
        two = ARGV[1].tosjis
        three = /^(?=.*#{two})/o

        begin
          if str.match(three) || {}[:match]
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

one = ARGV[0]

if one.nil?
  print 'tomoshibi is zinbei in Copyright Takayuki Kamiyama,I made in 2016.'
elsif one
  Scan.new.search_text
else
  print 'Not other arguments!'
end

__END__
