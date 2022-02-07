class Movie < ApplicationRecord

    has many :roles
    has many :persons
    
end
