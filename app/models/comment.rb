class Comment < ApplicationRecord
  belongs_to :group
  belongs_to :message
  belongs_to :user
end
