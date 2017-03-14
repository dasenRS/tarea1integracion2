class MainpageController < ApplicationController
  def index
  	if(Article.count > 1)
  		@articles = Article.find(:all, :order => "id desc", :limit => 10) 
  	end
  end
end
