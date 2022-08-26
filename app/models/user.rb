class User < ApplicationRecord
    has_secure_password 
    has_many :recipes
    validates :username, presence: true, uniqueness: true
    # validate :checking_password 

    # def checking_password
    #     if password != password_confirmation
    #         errors.add(:password, "Passwords do not match")
    #     end
    # end

end
