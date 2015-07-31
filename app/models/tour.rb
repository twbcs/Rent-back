class Tour < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  validates_presence_of :picture
  validates_presence_of :sort
  validates_presence_of :title
  validates_presence_of :short
  validates_presence_of :description

end
