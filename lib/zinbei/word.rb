# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

class Scomber2
  def sava2
    one = ARGV[0]
    two = ARGV[1]
    three = /#{ARGV[2]}/o
    four = ARGV[3]

    File.open(two, 'a:sjis', perm = 0o666) do |out_f|
      File.open(one) do |in_f|
        out_f.write in_f.read.sub(three, four)
        print ' 最初のみ、置換処理を行い書き込み処理をしました、終了します... '
        in_f.close
        out_f.close
      end
    end
  end
end

me = ARGV[0]

if me.nil?
  print 'night is zinbei in Copyright Takayuki Kamiyama,I made in 2016.'
elsif me
  Scomber2.new.sava2
else
  print 'Not other arguments!'
end

__END__
