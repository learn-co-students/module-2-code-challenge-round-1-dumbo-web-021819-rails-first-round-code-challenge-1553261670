class Power < ApplicationRecord
  has_many :superpowers
  has_many :heroines, through: :superpowers
end
