module Paramable
    module InstanceMethods
        def to_param #changes naming convention to lowercase, replaces space with -
            name.downcase.gsub(' ', '-')
        end
    end
end