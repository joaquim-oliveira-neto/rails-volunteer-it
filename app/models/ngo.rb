class Ngo < ApplicationRecord
  has_many  :volunteers, through: :projects
  has_many  :projects

  validates :name, :responsible, :email, :password, presence: true, uniqueness: true

end
