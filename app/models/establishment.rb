class Establishment < ApplicationRecord
  belongs_to :admin, class_name: 'User'

  has_many :promoters
  has_many :registers

  validates :name, presence: true
  validates :address, presence: true
end
