class Product < ApplicationRecord
    validates :name, :tagline, presence: true
end
