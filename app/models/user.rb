class User < ApplicationRecord

  has_many :wishes, 		dependent: :destroy
  has_many :dones, 		  	dependent: :destroy
  has_many :mybests, 		dependent: :destroy
  has_many :reviews, 		dependent: :destroy
  has_many :good_reviews, 	dependent: :destroy

##フォロー機能
  has_many :active_relationships, class_name: "Relationship", foreign_key: :following_id
  has_many :followings, through: :active_relationships, source: :follower

  has_many :passive_relationships, class_name: "Relationship", foreign_key: :follower_id
  has_many :followers, through: :passive_relationships, source: :following


  def followed_by?(user)
    passive_relationships.find_by(following_id: user.id).present?
  end

##devise

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def email_required?
    false
  end
  def email_changed?
    false
  end

end
