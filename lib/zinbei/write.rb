# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

class Writer
  def word
    one = ARGV[1]
    two = ARGV[2]

    File.open(one, 'a:utf-8', perm = 0o666) do |out_f|
      out_f.write(two)
      print ' 書き込み処理をしました、終了します... '
      out_f.close
    end
  end
end

__END__
