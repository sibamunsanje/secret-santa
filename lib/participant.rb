require "data_mapper_setup"

class Participant

  include DataMapper::Resource

  def initialiaze(name, email)
     @name = name
     @email = email
  end

  property :email,      String
  property :name,        String

end
