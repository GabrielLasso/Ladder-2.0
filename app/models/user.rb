class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def initialize(param)
      super(param)
      self.elo_pm = 100;
      self.elo_melee = 100;
      self.elo_undernight = 100;
  end
end
