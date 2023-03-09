# frozen_string_literal: true

Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

open(ARGV[1]) do |f|
  while (name = f.gets)
    risk = name.encode('UTF-8')
    printf('%4d : %s', f.lineno, risk)
 end
  puts ''
  exit!
end
