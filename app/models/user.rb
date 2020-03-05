class User < ApplicationRecord

    has_secure_password

    VALIDE_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\d-]+)*\.[a-z]+\z/i

    validates :name, presence: true, length: { maximum: 50 }
    validates :password, length: { minimum: 6 }
    validates :email, presence: true, length: {maximum: 255},
                                       format: { with: VALIDE_EMAIL_REGEX },
                                       uniqueness: { case_sensitive: true }


    has_many :contacts
end
