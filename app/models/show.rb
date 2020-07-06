class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
    
    def actors_list
        actors = []

        self.actors.each{|actor| actors << actor.full_name}
        actors
    end
end