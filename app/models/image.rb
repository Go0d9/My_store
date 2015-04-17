class Image < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true

  mount_uploader :picture, PictureUploader #ваш аплоадер
end
