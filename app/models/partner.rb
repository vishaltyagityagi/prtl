class Partner < ApplicationRecord
  mount_uploader :logo, LogoUploader
  belongs_to :user
end
