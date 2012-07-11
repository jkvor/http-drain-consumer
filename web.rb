require 'sinatra'

$stdout.sync = true

class MyApp < Sinatra::Application
  get '/' do
    "OK"
  end

  post '/logs' do
    raw = request.env["rack.input"].read
    puts raw
    status 200
  end
end

