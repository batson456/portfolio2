class StaticPagesController < ApplicationController
  def home
  	@posts = Post.all

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
