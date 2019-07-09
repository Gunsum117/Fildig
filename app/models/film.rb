class Film < ApplicationRecord

	has_many :reviews, 	dependent: :destroy
	has_many :wishes, 	dependent: :destroy
	has_many :dones, 	dependent: :destroy
	has_many :mybests, 	dependent: :destroy



	def reviewed_by?(user)
	    reviewes.where(user_id: user.id).exists?
	end

	def wished_by?(user)
	    wishes.where(user_id: user.id).exists?
	end

	def doned_by?(user)
	    dones.where(user_id: user.id).exists?
	end

	def mybested_by?(user)
	    dones.where(user_id: user.id).exists?
	end

end
