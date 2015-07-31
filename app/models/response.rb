class Response < ActiveRecord::Base
  validates_format_of :email, with:   /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, :message => "Email 錯誤"
  validates_presence_of :name
  validates_presence_of :phone
  validates_presence_of :email
end
