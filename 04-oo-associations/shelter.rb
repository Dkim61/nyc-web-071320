
# ## Practice
# - Shelters 
# - Animal can belong to one shelter
# - Shelter can have many animals 
# - Methods...
#     - find_all_in_shelter: which find all the animals that are curently in a shelter
#     - find_all_adopted: which find all the animals that are curently adopted / have an owner
#     - find_by_shelter: by shelter name
#     - ... the world is your oyster!




class Shelter
    attr_accessor :name
    def initialize name
        @name = name
    end

    def animals
        Animals.all.select do |animal|
            animal.shelter == self
        end

    def find_all_in_shelter
        Animal.all.select do |animals|
            animal.shelter != nil
    end

    def find_all_adopted
        Animal.all.select do |animals|
            animal.shelter = nil
        end
    end

    def find_by_shelter(name_of_shelter)
        name.animals
    end

end

class Animal
    attr_accessor :name, :shelter

    @@all = []

    def initialize (name, shelter = nil)
        @name = name
        @shelter = shelter
        @@all << self
    end

    def self.all
        @@all
    end


end