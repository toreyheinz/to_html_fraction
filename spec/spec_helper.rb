$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'to_html_fraction'
require 'spec'
require 'spec/autorun'

Spec::Runner.configure do |config|
  
end
