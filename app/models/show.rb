class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors.each do |actor|
      actor = []
      actor << Actor.new.full_name
      actor.to_s
    end
  end
end
