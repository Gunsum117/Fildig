class Review < ApplicationRecord

	has_many :good_reviews,	dependent: :destroy

	belongs_to :user
	belongs_to :film

	validates :user_id, :uniqueness => {:scope => :film_id}

	default_scope -> { order(created_at: :desc)}

	def good_reviewed_by?(user)
    	good_reviews.where(user_id: user.id).exists?
    end

    def self.top_review
    	Review.find(GoodReview.group(:review_id).order('count(review_id) desc').limit(1).pluck(:review_id))
    end

end
