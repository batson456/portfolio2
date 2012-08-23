class PostsController < ApplicationController

	require 'html_truncator'

	def index

		@posts = Post.where('status = ? OR status = ?', 'published', 'featured').order('created_at DESC')

		respond_to do |format|
			format.html # index.html.erb
			format.json { render :json => @posts}
		end
	end

	def show
		@post = Post.find_by_slug(params[:id])

		respond_to do |format|
			format.html # show.html.erb
			format.json { render :json => @post }
		end
	end

	def category
		require 'html_truncator'

		@posts = Category.find(params[:id]).posts

		respond_to do |format|
			format.html #categories.html.erb
			format.json { render :json => @categories}
		end
	end

	
end
