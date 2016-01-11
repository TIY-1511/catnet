class CatsController < ApplicationController
  def index
  	@cats = Cat.order(vote_count: :desc)
  end

  def voteup
  	cat = Cat.find(params[:id])
  	cat.vote_count = cat.vote_count + 1
  	cat.save
  	redirect_to cats_path, turbolinks: true
  end
end
