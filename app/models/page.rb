class Page < ApplicationRecord
    belongs_to :subject
    validates :name, presence: true, uniqueness: { scope: :subject, message: "Two pages from the same subject cannot have the same name." }
    validates :permalink, presence: true, uniqueness: true
    validates :position, presence: true, uniqueness: { scope: :subject, message: "There can only be one page per position in a subject." }
    validates :content, presence: true
    
end
