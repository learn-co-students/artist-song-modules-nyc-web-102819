module Memorable
    module ClassMethods

        def reset_all #empties out list of artists
            self.all.clear
        end
        
        def count #counts the number of artists in @@all
            self.all.count
        end
    end

    module InstanceMethods

        def initialize
            self.class.all << self
          end
          
    end

end