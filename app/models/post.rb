class Post < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true
  mount_uploader :img, ImgUploader

  def user
    return User.find_by(id: self.user_id)
  end
end
