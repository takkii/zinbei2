# frozen_string_literal: true

open("#{File.dirname(__FILE__)}/complete/source/ruby-complete") do |f|
  while (name = f.readlines)
    name.sort!
    str = name.join(', ')
    p str.chomp!
    name.each do |n|
      puts n
    end
    exit!
 end
end
