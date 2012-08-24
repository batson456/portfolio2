class StaticPagesController < ApplicationController
  def home
    require 'html_truncator'
    
  	@posts = Post.all(:limit => 4, :order => "created_at DESC")

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
