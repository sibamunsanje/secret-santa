require "./data_mapper_setup.rb"

class Participant
  include DataMapper::Resource

    property :id, Serial
    property :email, String
    property :name, String
    property :receiver, String
end
