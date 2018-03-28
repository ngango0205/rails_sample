class Image < ActiveRecord::Base
    mount_uploader :file, ImageUploader
    belongs_to :users
    has_many :image_comment, -> { order "created_at DESC"}
end
