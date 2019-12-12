require "sinatra/base"

class SecretSanta < Sinatra::Base
  get "/" do
    "Secret Santa app"
  end

  run! if app_file == $0
end
