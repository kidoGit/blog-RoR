class Post < ApplicationRecord
    has_many :comments
    validates :title, presence: true,
                        length: {minimum: 5}

    def self.modify_post(post)
        post.body = post.body + ' modified body'
        @mPost = post
    end
end
