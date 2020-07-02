class Actor < ActiveRecord::Base

    has_many :characters
    has_many :shows

    def full_name
      
    Actor.all.map {|t| "#{t.first_name} #{t.last_name}" }.join(" ")
    end

    def list_roles
    #    binding.pry
    self.characters.collect {|character| "#{character.name} - #{character.show.name}"}.join(", ")
   
    end
end