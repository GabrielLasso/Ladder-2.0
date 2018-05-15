class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :partidas, class_name: "Partida"
  validates_uniqueness_of :username
  def initialize(param)
      super(param)
      self.elo_pm = 100;
      self.elo_melee = 100;
      self.elo_undernight = 100;
  end
end
