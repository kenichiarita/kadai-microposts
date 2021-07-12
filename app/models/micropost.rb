class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorites
  
  validates :content, presence: true, length: { maximum: 255 }
  
  def favoriting?(user)
    self.favorites.include?(user)
  end
end
