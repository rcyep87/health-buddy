class Step < ActiveRecord::Base
  belongs_to :user

  validates :count, presence: true

  # secure passing user_id http://stackoverflow.com/questions/19866714/passing-current-user-to-a-form-without-using-hidden-fields-rails-4

  def set_user!(user)
    self.user_id = user.id

    self.save!
  end
end
