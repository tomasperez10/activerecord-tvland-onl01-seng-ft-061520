class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    Actor.new.full_name =  "Andrew Lincoln"
  end
end
