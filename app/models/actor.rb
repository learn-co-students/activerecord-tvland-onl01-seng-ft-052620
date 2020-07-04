class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        self.characters.collect do |character|
            "#{character.name} - #{character.show.name}"
        end
    end
end

# - Write a method in the `Actor` class, `#list_roles`, that lists all of the
#   characters that actor has alongside the show that the character is in. So, for
#   instance, if we had an actor, Peter Dinklage, a character, Tyrion Lannister, and a show, Game of Thrones, we with

#     ```ruby
#     peter = Actor.new(:first_name => "Peter", :last_name => "Dinklage")
#     tyrion = Character.new(:name => "Tyrion Lannister")
#     tyrion.actor = peter
#     thrones = Show.new(:name => "Game of Thrones")
#     tyrion.show = thrones
#     tyrion.save
#     ```

#   And then, when we run `peter.list_roles`, we would get an Array containing a
#   string with both the character and the show:

#     ```ruby
#     ['Tyrion Lannister - Game of Thrones']