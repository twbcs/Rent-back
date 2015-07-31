class Rent < ActiveRecord::Base
  mount_uploader :picture, PictureUploader

  validates_presence_of :brand
  validates_presence_of :model_no
  validates_presence_of :color
  validates_presence_of :picture
  validates_presence_of :displacement
  validates_presence_of :pay
  validates_presence_of :description

end
