class Asset < ApplicationRecord
    mount_uploader :asset_image, ImageUploader
end
