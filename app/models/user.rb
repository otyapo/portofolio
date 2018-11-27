class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :user_image

  has_many :gsounds, through: :favorites
  has_many :asounds, through: :favorites
  has_many :bsounds, through: :favorites
  has_many :psounds, through: :favorites
  has_many :favorites
  has_many :afavorites
  has_many :bfavorites
  has_many :pfavorites
  has_many :likes
  has_many :alikes
  has_many :blikes
  has_many :plikes




 has_many :following_relationships, foreign_key: "follower_id", class_name: "Relationship", dependent: :destroy

 has_many :followings, through: :following_relationships

 has_many :follower_relationships, foreign_key: "following_id", class_name: "Relationship", dependent: :destroy

 has_many :followers, through: :follower_relationships

  def following?(other_user)
    following_relationships.find_by(following_id: other_user.id)
  end

  def follow!(other_user)
    following_relationships.create!(following_id: other_user.id)
  end

  def unfollow!(other_user)
    following_relationships.find_by(following_id: other_user.id).destroy
  end


  validates :user_name, presence: true
  validates :email, presence: true
  validates :profile, length: { maximum: 150 }



end

