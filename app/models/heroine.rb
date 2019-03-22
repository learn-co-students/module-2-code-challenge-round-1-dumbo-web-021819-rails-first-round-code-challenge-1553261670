class Heroine < ApplicationRecord
  has_many :superpowers
  has_many :powers, through: :superpowers
end
