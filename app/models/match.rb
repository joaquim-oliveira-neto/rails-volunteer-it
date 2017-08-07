class Match < ApplicationRecord
  belongs_to :project
  belongs_to :volunteer

  validates :description, presence: true

end
