class Character < ActiveRecord::Base
    belongs_to :show
    belongs_to :actor

    def say_that_thing_you_say
        # using a given character's catchphrase
        # character.name character.catchphrase
        # binding.pry
        "#{self.name} always says: #{self.catchphrase}"
    end
end