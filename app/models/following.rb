class Following < ActiveRecord::Base

  belongs_to :user
  belongs_to :followed, class_name: 'User'

end

class User < ActiveRecord::Base

  has_many :followings
  has_many :friends, through: :followings, source: 'followed'

end