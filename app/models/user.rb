class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_uniqueness_of :username
  def initialize(param)
    super(param)
    self.elo_1 = 1200;
    self.elo_2 = 1200;
    self.elo_3 = 1200;
  end
  def to_s
    return self.username
  end
  def partidas
      return Partida.where("player1_id = ? OR player2_id = ?", self.id, self.id)
  end
  def update_elo(game, new_elo)
      case game
      when 1
          self.update_column(:elo_1, new_elo)
      when 2
          self.update_column(:elo_2, new_elo)
      when 3
          self.update_column(:elo_3, new_elo)
      end
  end
end
