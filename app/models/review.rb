class Review < ApplicationRecord

	has_many :good_reviews

	belongs_to :user
	belongs_to :film

	def good_reviewed_by?(user)
    	good_reviewes.where(user_id: user.id).exists?
    end

end
