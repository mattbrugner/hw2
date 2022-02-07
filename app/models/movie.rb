class Movie < ApplicationRecord

    has many :roles
    belongs_to :person
    
end
