class Review < ApplicationRecord

	has_many :good_reviews,	dependent: :destroy

	belongs_to :user
	belongs_to :film

	validates :user_id, :uniqueness => {:scope => :film_id}

	def good_reviewed_by?(user)
    	good_reviews.where(user_id: user.id).exists?
    end

end
