class Author < ApplicationRecord

    validates :name, presence: true, uniqueness: true
    validates :phone_number, length: {minimum: 10}

end
