class Film < ApplicationRecord

	acts_as_taggable_on :performers, :staffs, :genres
	acts_as_taggable

	attachment :image

	has_many :reviews, 	dependent: :destroy
	has_many :wishes, 	dependent: :destroy
	has_many :dones, 	dependent: :destroy
	has_many :mybests, 	dependent: :destroy

	validates :title,   	presence: true
	validates :story,		presence: true
	validates :release,		presence: true
	validates :language,	presence: true
	validates :time,		presence: true

	def self.search(search)
		if search.present?
			Film.where(['title LIKE? OR release LIKE? OR language LIKE?', "%#{search}%","%#{search}%","%#{search}%"])
		else
			Film.all
		end
	end

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
