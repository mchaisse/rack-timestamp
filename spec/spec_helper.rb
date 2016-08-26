$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

if RUBY_VERSION >= '2.0'
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
end

require 'rack/timestamp'
require 'rack/mock'
