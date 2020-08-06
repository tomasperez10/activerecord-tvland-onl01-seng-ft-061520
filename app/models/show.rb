class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors = []
    actors << Actor.new.full_name
    actors[1]

  end
end
