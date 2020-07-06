class Book < ApplicationRecord
    belongs_to :author
    validates :title, :author_id, :published_date, presence: true
end

