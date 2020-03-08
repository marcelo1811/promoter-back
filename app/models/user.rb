class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: ['admin', 'promoter']

  has_many :establishments, foreign_key: :user_id

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true
end
