class Promoter < ApplicationRecord
  belongs_to :user
  belongs_to :establishment

  has_many :registers
end
