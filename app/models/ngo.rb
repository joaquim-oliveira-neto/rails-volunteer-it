class Ngo < ApplicationRecord
  belongs_to :user
  has_many  :volunteers, through: :projects
  has_many  :projects, dependent: :destroy

  validates :name, :responsible, presence: true, uniqueness: true
  validates :user, uniqueness: true, presence: true
end


