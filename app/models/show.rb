class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors = self.actors.collect do |actor|
      actor = Artist.new.full_name
    end
  end
end
