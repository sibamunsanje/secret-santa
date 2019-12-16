require "./data_mapper_setup.rb"

class Participant
  include DataMapper::Resource

  property :email, String, :key => true
  property :name, String,  :key => true

end
