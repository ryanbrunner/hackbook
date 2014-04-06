class User < ActiveRecord::Base
  validates :email, presence: true

  def self.named(name)
    where(name: name)
  end
end
