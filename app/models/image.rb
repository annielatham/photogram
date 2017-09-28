class Image < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :foreign_key => "photo_id",
             :dependent => :destroy

  has_many   :likes,
             :foreign_key => "photo_id",
             :dependent => :destroy

  belongs_to :posting_user,
             :class_name => "User",
             :counter_cache => true

  # Indirect associations

  has_many   :followers,
             :through => :posting_user,
             :source => :following

  has_many   :liking_users,
             :through => :likes,
             :source => :liking_user

  has_many   :commenting_users,
             :through => :comments,
             :source => :commenting_user

  # Validations

end
