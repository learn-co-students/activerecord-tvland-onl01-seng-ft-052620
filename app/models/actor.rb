require "pry"
class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters

  def full_name
 
   full_name = self.first_name + " "+ self.last_name
   full_name
  end 

  def list_roles
    roles_list = []
    self.characters.each do |t|
        roles_list << "#{t.name}"+" - "+"#{t.show.name}"
    end 
    roles_list
end
end