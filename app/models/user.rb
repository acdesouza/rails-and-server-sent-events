class User < ActiveRecord::Base
  after_save do
    ActiveSupport::Notifications.instrument 'users', self
  end
end
