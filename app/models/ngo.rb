class Ngo < ApplicationRecord
  has_many  :volunteers, through: :projects
  has_many  :projects, dependent: :destroy

  validates :name, :responsible, :password, presence: true, uniqueness: true
  validates :email, presence: true, email: true

  class EmailValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
        record.errors[attribute] << (options[:message] || "is not an email")
      end
    end
  end

end
