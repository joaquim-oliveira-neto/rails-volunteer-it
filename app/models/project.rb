class Project < ApplicationRecord
  REMOTE = ["It can be done remotly", "We need the volunteer physically here"]
  SKILLS = ["Websites", "Android", "iOS", "Design" ]


  belongs_to :ngo
  has_many :matches, dependent: :destroy
  has_many :volunteers, through: :matches

  validates :name,  presence: true, uniqueness: true

end
