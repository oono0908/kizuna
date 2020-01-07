class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader
  validates :content, presence: true, unless: :video?  
end
