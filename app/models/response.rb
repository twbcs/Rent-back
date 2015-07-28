class Response < ActiveRecord::Base
  validates_format_of :email, with:   /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, :message => "Email 錯誤"
end
