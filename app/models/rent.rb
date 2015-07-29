class Rent < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
