class Userreply < ActiveRecord::Base
    belongs_to :user
    has_many :replyreplies
    mount_uploader :reply_img, S3uploaderUploader
end
