class Subject < ApplicationRecord
    has_many :pages
    validates :name, presence: true, uniqueness: true
    validates :position, presence: true, uniqueness: true

    # , length: { minimum: 10, message: " - Your message is too short, must be 10 characters or more." }
#   validates :reportee, uniqueness: { scope: :reporter, message: " - You already have a pending report for this user." }
end
