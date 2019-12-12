require "sinatra/base"

#runs on local host 9292 when I run rackup

class SecretSanta < Sinatra::Base

  
  get "/secret-santa-generator" do
    erb(:index)

  end

  run! if app_file == $0
end
