# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'toiler/version'

Gem::Specification.new do |spec|
  spec.name          = 'toiler'
  spec.version       = Toiler::VERSION
  spec.authors       = ['Sebastian Schepens']
  spec.email         = ['sebas.schep@hotmail.com']
  spec.description = spec.summary = 'Toiler is a super efficient AWS SQS thread based message processor'
  spec.homepage      = 'https://github.com/sschepens/toiler'
  spec.license       = 'LGPLv3'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables << 'toiler'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'nokogiri'
  spec.add_development_dependency 'dotenv'

  spec.add_dependency 'aws-sdk', '~> 2.2', '>= 2.2.10'
  spec.add_dependency 'concurrent-ruby', '~> 1.0', '>= 1.0.0'
  spec.add_dependency 'concurrent-ruby-edge', '~> 0.2.0', '>= 0.2.0'
end
