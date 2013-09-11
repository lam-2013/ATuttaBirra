class Votazione < ActiveRecord::Base
  attr_accessible :id, :votato, :votante, :oggetto, :voto

  # a relationship belongs to a follower (that is represented by the User model)
  belongs_to :votante, class_name: 'User'

  # a relationship belongs to a followed user (that is represented by the User model)
  belongs_to :votato, class_name: 'User'

  # both model attributes must be always present...
#  validates :follower_id, presence: true
 # validates :followed_id, presence: true
end