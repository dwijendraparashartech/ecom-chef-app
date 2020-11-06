class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products, dependent: :destroy

  def is_admin?
    self.role.try(:downcase) === 'admin'
  end

  def is_cheif?
    self.role.try(:downcase) === 'cheif'
  end
end
