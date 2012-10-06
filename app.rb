require 'omniauth-allplayers'

class MySinatraApp < Sinatra::Base
  use Rack::Session::Cookie
  use OmniAuth::Builder do
    provider :AllPlayers, 'consumerkey', 'consumersecret'
  end

  get '/' do
    <<-HTML
    <a href='/auth/allplayers'>Sign in with AllPlayers</a>

    HTML
  end

  post '/auth/:name/callback' do
    auth = request.env['omniauth.auth']
    # do whatever you want with the information!
  end
end
