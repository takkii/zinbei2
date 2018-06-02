require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'date'
require 'tanraku'

#---Example-1---start---

module TestVersion
	module_function
	def version
    require 'zinbei/version'
	end
end

describe 'TestVersion' do
	it ":expect say '1.2.2' when it receives the greet() message" do
		versioning = TestVersion.version
		expect(versioning) == '1.2.2'
	end
end

#---Example-1---end---

#---Example-2---start---

#Rspec Test Templete case 1.

class DateTime
	def test1
		t = Time.new
		x = Time.mktime(t.year,t.month,t.day)
		y = Time.mktime(t.year+1,1,1)
		((y-x) /60/60/24).round
	end
end

describe 'DateTime' do
	it ":expect say '124日です' when it receives the greet() message" do
		date = DateTime.new.test1
		expect(date) == 124
	end
end

#---Example-2---end---

#---Example-3---start---

#Rspec Test Templete case 1.

class DateOver
	def test1
		Time.new.strftime('%Y年%m月%d日　%H時%M分%S秒')
	end
end

describe 'DateOver' do
	it ":expect say '2017年8月31日' when it receives the greet() message" do
		dateclock= DateOver.new.test1
		expect(dateclock) == '2017年8月31日'
	end
end

#---Example-3---end---

#---Example-4---start---

#Rspec Test Templete case 1.

#class Zinbei
#	def test1
#
#	end
#end

#describe "" do
#	it ":expect say '' when it receives the greet() message" do
#		=
#				expect() == ''
#	end
#end

#---Example-4---end---

#---Example-5---start---

#Rspec Test Templete case 1.

#class Zinbei
#	def test1
#
#	end
#end

#module Zinbei
#	module_function
#	def test2
#
#	end
#end

#describe "" do
#	it ":expect say '' when it receives the greet() message" do
#		=
#				expect() == ''
#	end
#end

#---Example-5---end---