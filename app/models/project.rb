class Project < ApplicationRecord
  belongs_to :ngo
  has_many :volunteers, through: :matches

  validates :name,  presence: true, uniqueness: true

end
