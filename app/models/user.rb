class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_uniqueness_of :username
  def initialize(param)
    super(param)
    self.elo_pm = 100;
    self.elo_melee = 100;
    self.elo_undernight = 100;
  end
  def to_s
    return self.username
  end
  def partidas
      return Partida.where("player1_id = ? OR player2_id = ?", self.id, self.id)
  end
end
