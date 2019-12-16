require "sinatra/base"
require "data_mapper"

#runs on local host 9292 when I run rackup

class SecretSanta < Sinatra::Base


  get "/secret-santa-generator" do
    # @uEntername = params[:Entername]
    # puts params
     erb(:index)
  end

  post "/participant" do
    
      {name: "siba", email:"sibaj@hotmail.co.uk"}

      participant = Participant.new(name, email)
      participant.save

  end

  run! if app_file == $0
end
