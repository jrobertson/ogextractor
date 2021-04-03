Gem::Specification.new do |s|
  s.name = 'ogextractor'
  s.version = '0.1.3'
  s.summary = 'Reads Twitter and Open Graph metadata from a given URL.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/ogextractor.rb']
  s.add_runtime_dependency('nokorexi', '~> 0.5', '>=0.5.3')
  s.signing_key = '../privatekeys/ogextractor.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/ogextractor'
end
