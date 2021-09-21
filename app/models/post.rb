class Post < ApplicationRecord

    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    # validates :category {"Fiction" || "Non-Fiction"}
    validates :wrong_title

    def wrong_title
        if title == "True Facts"
            errors.add(:title, "Title not allowed")
        end
    end
end
