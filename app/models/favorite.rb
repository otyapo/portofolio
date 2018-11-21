class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :gsound

  default_scope -> { order(created_at: :desc) }

end
