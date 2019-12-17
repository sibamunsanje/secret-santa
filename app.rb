require "sinatra/base"
require "data_mapper"
require_relative "data_mapper_setup.rb"

#runs on local host 9292 when I run rackup

class SecretSanta < Sinatra::Base

  get "/secret-santa-generator" do
    erb(:index)
  end

  post "/secret-santa-generator" do

      @participant = Participant.new(name: params[:name], email: params[:email])

      @participant.save

      participants = Participant.all
      receivers = participants.map(& :name)

      participants.each do |participant|

      if participant.name != receivers.last

         participant.receiver = receivers.pop

         participant.save
      else
         participant.receiver = receivers.pop[0]
         participant.save
      end
    end

      redirect "/secret-santa-generator"

  end

  run! if app_file == $0
end
