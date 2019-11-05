module Findable
    module ClassMethods
        def find_by_name(name) #finds an instance of a song by name in @@all
            self.all.detect{|a| a.name == name}
        end
    end
end