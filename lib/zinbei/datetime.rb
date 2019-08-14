# frozen_string_literal: true

require 'date'

print '時刻を表示:'
t = Time.new # 今日の日付と時刻
puts t.strftime('%Y年%m月%d日　%H時%M分%S秒')
t = Time.new
x = Time.mktime(t.year, t.month, t.day)
y = Time.mktime(t.year + 1, 1, 1)
print '来年の1月1日まであと: '
print ((y - x) / 60 / 60 / 24).round
print ' 日です'
