class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar
  has_many :blurts
  has_many :shows

  def needs_to_blurt?
    (DateTime.now - self.last_blurt).to_i >= 1

  end

  def last_blurt
    self.blurts.last.created_at.to_datetime
  end
end
