class Role < ApplicationRecord

    has_many :movies
    has_many :persons
    
end
