class User < ActiveRecord::Base
  has_many :userreplies
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
     
  mount_uploader :img, S3uploaderUploader
  

end
