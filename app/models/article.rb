class Article < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    # name of a stream: articles
    broadcasts_to -> (article) {:articles}
end
