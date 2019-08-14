# frozen_string_literal: true

open(ARGV[1]) do |f|
  while (name = f.readlines)
    name.encode('UTF-8').chomp!
    puts name.downcase!
    exit!
 end
end
