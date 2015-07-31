class Advert < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
 validates_presence_of :title
 validates_presence_of :link
end
