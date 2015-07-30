class Tour < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
