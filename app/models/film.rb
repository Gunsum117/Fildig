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

	def save_tags(tags)
	    current_tags = self.tags.pluck(:name) unless self.tags.nil?
	    old_tags = current_tags - tags
	    new_tags = tags - current_tags

    	# Destroy old taggings:
	    old_tags.each do |old_name|
	      self.tags.delete Tag.find_by(name:old_name)
	    end

	    # Create new taggings:
	    new_tags.each do |new_name|
	      film_tag = Tag.find_or_create_by(name:new_name)
	      self.tags << film_tag
	    end
  	end

end
