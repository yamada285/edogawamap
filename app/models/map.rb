# class Map < ApplicationRecord
#   # 存在性のバリデーション
#   # latitude:緯度, longitude:経度
#   validates :latitude, presence: true
#   validates :longitude, presence: true
#   validates :title, presence: true   

#   # バリデーションの前に送信されたaddressの値によってジオコーディング(緯度経度の算出)を行う
#   geocoded_by :address
#   before_validation :geocode
# end



# == Schema Information
#
# Table name: stores
#
#  id         :integer          not null, primary key
#  name       :string
#  latitude   :string
#  longitude  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Map < ApplicationRecord
  has_many :operation_hours, dependent: :destroy
end

