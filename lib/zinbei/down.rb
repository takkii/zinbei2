# frozen_string_literal: true

Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

open(ARGV[1]) do |f|
  while (name = f.readlines)
    name.encode('UTF-8').chomp!
    puts name.downcase!
    exit!
 end
end
