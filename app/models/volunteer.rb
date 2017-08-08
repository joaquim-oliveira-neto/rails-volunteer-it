class Volunteer < ApplicationRecord
  belongs_to :user
  has_many :matches, dependent: :destroy
  has_many :projects, through: :matches
  has_many :ngos, through: :projects


  validates :first_name, :last_name, :description, :password, presence: true
  validates :email, uniqueness: true
  validates :email, presence: true, email: true
  validates :user, uniqueness: true
end


