class StaticPagesController < ApplicationController
  def home
  	@posts = Post.all(:limit => 3, :order => ":created_at DESC")

  	respond_to do |format|
  		format.html #home.html.erb
  		format.json { render :json => @posts }
  	end
  end

  def about
  end

  def contact
  end
end
