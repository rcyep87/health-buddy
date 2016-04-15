class Sleep < ActiveRecord::Base
  belongs_to :user

  validates :start_time, presence: true
  validates :end_time  , presence: true

  def set_user!(user)
    self.user_id = user.id

    self.save!
  end
end
