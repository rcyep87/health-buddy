class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :steps
  has_many :sleeps
  has_one :location

  def full_address
    "#{User.first.location.address1}, #{User.first.location.city}, #{User.first.location.state} #{User.first.location.zipcode}"
  end

  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?
end
