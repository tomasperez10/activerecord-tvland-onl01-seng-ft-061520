class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors = []
    actors << "#{CreateActors.new.first_name} #{CreateActors.new.last_name}"
    actors
  end
end
