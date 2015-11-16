# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails/logstash_stdout/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-logstash_stdout"
  spec.version       = Rails::LogstashStdout::VERSION
  spec.authors       = ["Santiago Palladino"]
  spec.email         = ["spalladino@manas.com.ar"]
  spec.summary       = %q{Configures a Rails app for logging in logstash format to STDOUT}
  spec.description   = %q{Uses lograge and logstash-event gems to output all app logs in logstash format to STDOUT instead of rails log files.}
  spec.homepage      = "https://github.com/instedd/rails-logstash_stdout"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "rails", ">= 3.0"
  spec.add_dependency "lograge", "~> 0.3"
  spec.add_dependency "logstash-event", "~> 1.2"
end
