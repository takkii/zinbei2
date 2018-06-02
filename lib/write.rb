lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

class Writer

  def word
    one = ARGV[0]
    two = ARGV[1]

    File.open(one, 'a:sjis', perm=0666) do |out_f|
        out_f.write(two)
        print ' 書き込み処理をしました、終了します... '
        out_f.close
    end
  end
end

me = ARGV[0]

case
  when me.nil?
    print 'iruka is zinbei in Copyright Takayuki Kamiyama,I made in 2016.'
  when me
	  Writer.new.word
  else
    print 'Not other arguments!'
end

__END__
