class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true, length: {minimum: 6, maximum: 20}, uniqueness: { case_sensitive: false}
    validates :password, presence: true, length: {minimum: 8, maximum: 20}
    before_save :lower_case

    private

        def lower_case()
            self.username = username.downcase
        end

end


