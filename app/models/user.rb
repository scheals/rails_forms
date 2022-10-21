class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, length: { minimum: 8 }, presence: true
end
