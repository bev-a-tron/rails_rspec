class Zombie < ActiveRecord::Base
  validates :name, presence: true
  has_many :tweets
end
