class User < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :foreign_key => "liking_user_id",
             :dependent => :destroy

  has_many   :comments,
             :foreign_key => "commenting_user_id",
             :dependent => :destroy

  has_many   :images,
             :foreign_key => "posting_user_id",
             :dependent => :destroy

  has_many   :received_friend_requests,
             :class_name => "FriendRequest",
             :foreign_key => "recipient_id",
             :dependent => :destroy

  has_many   :sent_friend_requests,
             :class_name => "FriendRequest",
             :foreign_key => "sender_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :popular_photos,
             :through => :following,
             :source => :likes_on_friends_photos

  has_many   :friends_photo_feed,
             :through => :following,
             :source => :images

  has_many   :likes_on_friends_photos,
             :through => :likes,
             :source => :photo

  has_many   :comments_on_friends_photos,
             :through => :comments,
             :source => :photo

  has_many   :followers,
             :through => :received_friend_requests,
             :source => :sender

  has_many   :following,
             :through => :sent_friend_requests,
             :source => :recipient

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
