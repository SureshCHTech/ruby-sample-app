$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'vendor', 'bundle'))

require 'sinatra'

get '/' do
  'Hello World'
end
