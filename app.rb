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

  get '/auth/allplayers/callback' do
    auth = request.env['omniauth.auth']
    # do whatever you want with the information!
    "Hello #{auth.info['nickname']}"
  end
end
