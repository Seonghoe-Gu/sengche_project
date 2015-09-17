class HomeController < ApplicationController
  require 'digest/md5'
  def index
  end
  
  def private_page
  end
  
  def private_page1
  end
  
  def userall
    @users = User.all

  end
  
  def user_reply
    r = Userreply.new
    r.user_id = params[:user_id]
    r.id_img = params[:id_img]
    r.reply_id = current_user.id
    r.reply_name = params[:reply_name]
    r.reply_content = params[:reply_content]
    r.reply_img = params[:reply_img]
    r.reply_password = params[:reply_password]
    r.save
    
    redirect_to :back
  end
  
  def private_delete
    @posts = Userreply.find(params[:id])
    @posts.destroy
    redirect_to :back

  end
  
  def reply_reply
    e = Replyreply.new
    e.userreply_id = params[:userreply_id]
    e.userreply_name = current_user.nickname
    e.userreply_img = current_user.img.url
    e.userreply_password = current_user.password
    e.userreply_content = params[:userreply_content]
    e.save
    redirect_to :back
  end
  
  def reply_delete
    posts = Replyreply.find(params[:id])
    posts.destroy
    redirect_to :back
  end
  
  
  # 지홍이형코드
    def show

        @default_lat = 37.52551993630743
        @default_lng = 126.9797551631927511
        @default_zoom = 11
        @default_zoom_val = 16
        @id = params[:id]
        @error = params[:error]
        
        @default_lat = (@default_lat == 0 ? 38.685509760012 : @default_lat)
        @default_lng = (@default_lng == 0 ? 126.650390625 : @default_lng)
        @default_zoom = ((@default_zoom <=0 || @default_zoom > 20) ? 4 : @default_zoom)
        
        @locations = Location.all
        @rooms = Room.all
    end
    
    def search
        @memos = Memo.where(author: params[:author]).reverse
        if params[:author][0]=="\\"
            @similar_memos = Memo.where("author like ?", "%"+params[:author].to_s[1..-1]+"%").reverse
        else
            @similar_memos = nil
        end
    end
    
    def delete
        location = Location.find(params[:id])
        if location != nil
            if location.password == Digest::MD5.hexdigest(params[:password])
                location.destroy
                redirect_to "/home/show"

            else
                redirect_to "/?lat="+location.lat.to_s+"&lng=" + location.lng.to_s + "&zoom=" +location.zoom.to_s + "&id=" + location.id.to_s + "&error=delete"
            end
        end
    end
    
    def write
        full_sanitizer = Rails::Html::FullSanitizer.new
        
        location = Location.new
        location.location = params[:location]
        location.lng = params[:lng].to_f
        location.lat = params[:lat].to_f
        location.zoom = params[:zoom].to_i
        
        if location.location == nil || location.location == "" ||
          location.lng == nil || location.lng == 0.0 ||
          location.lat == nil || location.lat == 0.0 ||
          location.zoom == nil || location.zoom == 0
          @result= "wrong input"
          redirect_to "/?lat="+location.lat.to_s+"&lng="+location.lng.to_s + "&zoom=" +location.zoom.to_s + "&error=write"
        else
          location.location = full_sanitizer.sanitize(location.location.gsub(/\r\n/, ' '))
          # location.password = full_sanitizer.sanitize(location.password.gsub(/\r\n/, ' '))
          # location.password= Digest::MD5.hexdigest(location.password)
          # location.content = full_sanitizer.sanitize(location.content.gsub(/\r\n/, ' '))
          location.save
          @result = "saved"
          redirect_to "/home/show"+"/?lat="+location.lat.to_s+"&lng="+location.lng.to_s + "&zoom=" +location.zoom.to_s + "&id=" + location.id.to_s
        end
    end
    
    def create
        room = Room.new
        room.location_id = params[:location_id]
        room.sports = params[:sports]
        room.date = params[:date]
        room.time = params[:time]
        room.rec_num = params[:rec_num]
        room.tot_num = params[:tot_num]
        room.comment = params[:comment]
        room.save
        
        default_zoom_val=16
        location=Location.find(params[:location_id])
        #zoom이 잘 안되네
        redirect_to "/home/show" +"/?lat="+location.lat.to_s+"&lng="+location.lng.to_s + "&zoom=" + default_zoom_val.to_s + "&id=" + location.id.to_s
    end
    
    def join
        join = Join.new
        join.room_id = params[:room_id]
    end
end
