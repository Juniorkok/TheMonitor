class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    belongs_to :category
    validates :title, presence: true,
                      length: { minimum: 6 }

    def self.search(search)
    # Title is for the above case, the OP incorrectly had 'name'
    where("title LIKE ?", "%#{search}%")
    end

    def self.searchByCategory(category)
    where("category_id LIKE ?", "%#{category}%")
    end
end
