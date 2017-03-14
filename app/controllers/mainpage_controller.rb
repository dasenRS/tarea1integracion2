class MainpageController < ApplicationController
  def index
  	@articles = Article.last(10).reverse
  	ccount = Array.new()
    c = 0
    Article.last(10).reverse.each do |art|
      c = Comment.where(article_id: art.id).count
      ccount << c        
    @commentscount = ccount
  end
  end
end
