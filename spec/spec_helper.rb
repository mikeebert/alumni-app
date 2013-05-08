$: << File.expand_path(File.dirname(__FILE__)) + '/../'
$: << File.expand_path(File.dirname(__FILE__)) + '/../lib/'

require 'alumni'
require 'rack/test'

#makes Rack::Test available to all contexts
RSpec.configure do |config|
  config.include Rack::Test::Methods
end


