require 'rack'

 require './app'

 use Rack::Reloader, 0
 use Rack::Auth::Basic do |username, password|
   username == 'serg' && password == 'Holiday'
 end

 run Application.new