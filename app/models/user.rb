class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :steps
  has_many :sleeps
  has_many :locations

  validates :email, uniqueness: true

  def most_recent_lat #displays most recent latitude for a user's location
    self.locations.last.latitude
  end

  def most_recent_long #displays most recent longitude for a user's location
    self.locations.last.longitude
  end

  def forecast
    ForecastIO.forecast(most_recent_lat, most_recent_long).to_hash
  end

end
