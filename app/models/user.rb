class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar
  has_many :blurts
  has_many :shows

  def needs_to_blurt?
      result = false
      if self.ever_blurted?
        result = (DateTime.now - self.last_blurt).to_i >= 1
      else
        result = true
      end
      result
  end

  def ever_blurted?
    self.blurts.last
  end

  def last_blurt
    self.blurts.last.created_at.to_datetime
  end
end
