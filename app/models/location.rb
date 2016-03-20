class Location < ActiveRecord::Base
  belongs_to :user

  def set_user!(user)
    self.user_id = user.id

    self.save!
  end

  def full_address
    "#{address1}, #{city}, #{state} #{zipcode}"
  end

  geocoded_by :full_address
  after_validation :geocode
end
