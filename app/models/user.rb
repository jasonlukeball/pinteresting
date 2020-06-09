class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # RELATIONSHIP TO PINS - ONE USE HAS MANY PINS
  has_many :pins

  # VALIDATION - MUST GIVE USERNAME
  validates :name, presence: true

end
