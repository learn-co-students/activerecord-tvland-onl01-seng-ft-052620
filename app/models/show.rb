

class Show < ActiveRecord::Base
 has_many :characters
 has_many :actors, through: :characters
 belongs_to :network

    def actors_list 
        list = []
        self.actors.collect do |x|
           #binding.pry

           x.first_name + " " + x.last_name
        end 
    end 
end