class Ngo < ApplicationRecord
  PURPOSE = ["Todas", "Capacitação Profissional", "Consumo Consciente", "Cultura, Esporte e Arte", "Defesa de Direitos", "Educação", "Idosos", "Meio Ambiente", "Participação Cidadã", "Proteção Animal", "Pessoas com Deficiência"]

  belongs_to :user
  has_many  :volunteers, through: :projects
  has_many  :projects, dependent: :destroy

  geocoded_by :address # address is what geocode searches for

  validates :name, :responsible, presence: true, uniqueness: true
  validates :user, uniqueness: true, presence: true
  after_validation :geocode, if: :address_changed? #validates address coordinates

end


