module PapyrusBlog
  class BlogController < ApplicationController
    def blog
      @blog ||= Papyrus::Folder.new 'blog'
    end
    
    def index
      @posts = nil

      if params[:tag]
        @posts = blog.find :tag => params[:tag]
      elsif params[:author]
        @posts = blog.find :author => params[:author]
      else
        @posts = blog.find_all
      end
    end

    def show
      @post = blog.document params[:id]
    end
  end
end
