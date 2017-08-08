class Volunteer < ApplicationRecord
  belongs_to :user
  has_many :matches, dependent: :destroy
  has_many :projects, through: :matches
  has_many :ngos, through: :projects


  validates :first_name, :last_name, :description, presence: true
  # A Classe user já tem e-mail e passaword. Como a classe volunteer está
  # associada a User então não há necessidade aqui de fazer validaçao de e-mail e passwor
  # validates :email, uniqueness: true
  # validates :email, presence: true, email: true
  validates :user, uniqueness: true
end


