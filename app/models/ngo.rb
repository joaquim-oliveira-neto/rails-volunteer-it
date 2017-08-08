class Ngo < ApplicationRecord
  belongs_to :user
  has_many  :volunteers, through: :projects
  has_many  :projects, dependent: :destroy

  validates :name, :responsible, :password, presence: true, uniqueness: true
  validates :email, presence: true, email: true
  validates :user, uniqueness: true
end


