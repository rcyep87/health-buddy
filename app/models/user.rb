class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :steps
  has_many :sleeps
  has_one :weather

  def full_address
    "#{User.first.weather.address1}, #{User.first.weather.city}, #{User.first.weather.state} #{User.first.weather.zipcode}"
  end
end
