class User < ActiveRecord::Base
  scope :last_updated, -> {
    order('updated_at DESC, created_at DESC').limit(1)
  }
end
