class HomeController < ApplicationController
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
  
end
