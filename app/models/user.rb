class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def on_track?
  	self.updated_at.to_date > 2.days.ago
  end

  def on_time?
  	self.updated_at.to_date == Date.current
  end



end
