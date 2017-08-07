class Volunteer < ApplicationRecord
  has_many :matches
  has_many :projects, through: :matches
  has_many :ngos, through: :projects

  validates :first_name, :last_name, :description, :password, presence: true
  validates :email, uniqueness: true
  validates :email, presence: true, email: true
end


