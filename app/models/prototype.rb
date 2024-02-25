class Prototype < ApplicationRecord

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true

  belongs_to :user # Prototypeは1つのUserに属する
  has_one_attached :image # Prototypeモデルとimageファイルとのアソシエーションを設定
  has_many :comments, dependent: :destroy
end

