class Contact < ActiveRecord::Base
  validates :name, :email, :phone_number, presence: true
end
