class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
         has_many :group_users, dependent: :destroy
         has_many :groups, through: :group_users, dependent: :destroy
         has_many :messages, dependent: :destroy
         has_many :comments, dependent: :destroy
         has_many :likes, dependent: :destroy
         has_many :liked_posts, through: :likes, source: :comment
         has_many :trains
         has_many :hips
         has_many :calves
         has_many :thighs
         has_many :arms
         has_many :backs
         has_many :chests
         has_many :bellies
         def already_liked?(comment)
          self.likes.exists?(comment_id: comment)
         end
end
