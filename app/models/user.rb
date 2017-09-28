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

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
