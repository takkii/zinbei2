lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'openssl'

class Pass
def word
key = OpenSSL::PKey::RSA.new(1024)
digest = OpenSSL::Digest::SHA1.new()

issue = sub = OpenSSL::X509::Name.new()

# ì¬Òî•ñ‚ğ•ÏX‚·‚é‰ÓŠ
sub.add_entry('C', 'JP')
sub.add_entry('ST', 'Kanazawa city')
sub.add_entry('CN', 'Takayuki Kamiyama')

cer = OpenSSL::X509::Certificate.new()
cer.not_before = Time.at(0)
cer.not_after = Time.at(0)
cer.public_key = key
cer.serial = 1
cer.issuer = issue
cer.subject = sub

cer.sign(key, digest)
print cer.to_text
end
end

# https://docs.ruby-lang.org/ja/latest/library/openssl.html

me = ARGV[0]

case
  when me.nil?
   Pass.new.word
  else
    print 'Not other arguments!'
end

__END__