class Article < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    after_create_commit { broadcast_prepend_to "articles-list" }
    after_update_commit { broadcast_replace_to "articles-list" }
    after_destroy_commit { broadcast_remove_to "articles-list" }
end
