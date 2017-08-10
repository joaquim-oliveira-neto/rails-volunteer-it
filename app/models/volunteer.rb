class Volunteer < ApplicationRecord
  belongs_to :user
  has_many :matches, dependent: :destroy
  has_many :projects, through: :matches
  has_many :ngos, through: :projects


  validates :first_name, :last_name, :description, presence: true
  validates :user, uniqueness: true

  mount_uploader :photo, PhotoUploader
end


