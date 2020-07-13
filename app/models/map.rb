class Map < ApplicationRecord
  # 存在性のバリデーション
  # latitude:緯度, longitude:経度
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :title, presence: true   

  # バリデーションの前に送信されたaddressの値によってジオコーディング(緯度経度の算出)を行う
  geocoded_by :address
  before_validation :geocode
end
