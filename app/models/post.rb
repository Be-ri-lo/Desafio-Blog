class Post < ApplicationRecord
    validates :title, :image_url, :content, presence: true
    before_save :remove_word

    def remove_word
        self.content = self.content.remove('spoiler')
    end
end
