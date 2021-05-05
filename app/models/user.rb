class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :visios, dependent: :destroy

  after_create :create_visio

  def create_visio
    self.visios.create
  end

  def to_s
    "User: #{email}"
  end
end
