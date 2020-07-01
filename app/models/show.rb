class Show < ActiveRecord::Base

  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    list = []
    self.actors.each do |actor|
      list << "#{actor.first_name} #{actor.last_name}"
    end
    list
  end

end
