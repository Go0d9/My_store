class Image < ActiveRecord::Base
   mount_uploader :picture, PictureUploader #ваш аплоадер
end
