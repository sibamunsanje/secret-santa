require "sinatra/base"
require "data_mapper"
require_relative "data_mapper_setup.rb"

#runs on local host 9292 when I run rackup

class SecretSantaApp < Sinatra::Base

  post "/secret-santa-generator" do

      @participant = Participant.new(:name => "siba",:email => "sibaj@hotmail.co.uk")
      @participant.save

      erb(:index)

  end

  run! if app_file == $0
end
