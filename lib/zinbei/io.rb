# frozen_string_literal: true

Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

count = 0

open(ARGV[1]) do |f|
  while f.gets
    f.each_line do
      count += 1
    end
  end
  print 'LineNumber is : '
  puts count

  print 'Did it read to the last of a page?：'
  puts f.eof?
end
