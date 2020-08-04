class Gallery < ApplicationRecord
  mount_uploader :image, LogoUploader

end
