class Film < ApplicationRecord

	acts_as_taggable_on :interests, :performers, :staffs, :genres
	acts_as_taggable

	attachment :image

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
	    mybests.where(user_id: user.id).exists?
	end


end
