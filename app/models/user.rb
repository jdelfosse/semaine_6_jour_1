class User < ApplicationRecord

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :first_name, presence: true, null: false
    validates :last_name, presence: true, null: false
    validates :password, presence: true, null: false
    validates :email, presence: true, null: false, 
                      format: {with: VALID_EMAIL_REGEX},
                      uniqueness: { case_sensitive: false } # rend unique et insensible aux majuscules

end
