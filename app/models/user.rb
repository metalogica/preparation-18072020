class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    # >_ user.full_name 
    # => 'Satoshi Nakamoto'
    return "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end
end
