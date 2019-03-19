# coding: utf-8
# frozen_string_literal: true

require 'date'
require 'tanraku'

#---Example-1---start---
module TestVersion
  module_function

  def version
    '1.2.2'.to_i
  end
end

describe 'TestVersion' do
  context "when it receives the greet() message" do
    it 'return integer version 1.2.2' do
      versioning = TestVersion.version
      expect(versioning) == '1.2.2'.to_i
    end
  end
end

#---Example-1---end---

#---Example-2---start---

# Rspec Test Templete case 1.
class DateTime
  def test1
    t = Time.new
    x = Time.mktime(t.year, t.month, t.day)
    y = Time.mktime(t.year + 1, 1, 1)
    ((y - x) / 60 / 60 / 24).round
  end
end

describe 'DateTime' do
  context "when it receives the greet() message" do
    it "expect say 124日です" do
      date = DateTime.new.test1
      expect(date) == 124
    end
  end
end

#---Example-2---end---

#---Example-3---start---

# Rspec Test Templete case 1.
class DateOver
  def test1
    Time.new.strftime('%Y年%m月%d日　%H時%M分%S秒')
  end
end

describe 'DateOver' do
  context "when it receives the greet() message" do
    it "expect say 2017年8月31日" do
      dateclock = DateOver.new.test1
      expect(dateclock) == '2017年8月31日'
    end
  end
end

#---Example-3---end---

#---Example-4---start---

# Rspec Test Templete case 1.

# class Zinbei
#  def test1
#
#  end
# end

# describe "" do
#  it ":expect say '' when it receives the greet() message" do
#    =
#        expect() == ''
#  end
# end

#---Example-4---end---

#---Example-5---start---

# Rspec Test Templete case 1.

# class Zinbei
#  def test1
#
#  end
# end

# module Zinbei
#  module_function
#  def test2
#
#  end
# end

# describe "" do
#  it ":expect say '' when it receives the greet() message" do
#    =
#        expect() == ''
#  end
# end

#---Example-5---end---
