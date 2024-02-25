class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         validates :name, presence: true
         validates :profile, presence: true
         validates :occupation, presence: true
         validates :position, presence: true

         has_many :prototypes, dependent: :destroy # Userが複数のPrototypeを所有する
         has_many :comments, dependent: :destroy
end
