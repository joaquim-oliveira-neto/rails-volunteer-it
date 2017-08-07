class Volunteer < ApplicationRecord
  has_many: projects through: matches
  has_many: ngos through: projects

  validates :first_name, :last_name, :description, :password, presence: true
  validates :email, uniqueness: true
  validates :email, presence: true, email: true
end

class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end
