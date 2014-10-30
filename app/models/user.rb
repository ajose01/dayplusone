class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def on_track?
  	self.last_date.to_date > 2.days.ago
  end

  def on_time?
  	self.last_date.to_date == Date.current
  end



end
