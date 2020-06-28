class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    output = []
    self.characters.each{|i| output<< "#{i.name} - #{i.show.name}"}
    output
  end

end