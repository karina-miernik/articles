class Article < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    # broadcasts_to -> (article) {:articles}
end
