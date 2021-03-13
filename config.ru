# This file is used by Rack-based servers to start the application.

require_relative "config/environment"
require 'rack/cors'
use Rack::Cors do

 # allow all origins in development
 allow do
   origins 'http://localhost:3001'
   resource '*',
       :headers => :any,
       :methods => :any,
       :credentials => true
 end
end

run Rails.application
Rails.application.load_server
