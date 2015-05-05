class HomeController < ApplicationController
  def index
    @items = Item
    @items = @items.where("price >= ?", params[:price_from])  if params[:price_from]
    @items = @items.where("created_at >=?", 1.day.ago)        if params[:today]
    @items = @items.where("votes_count >= ?", params[:votes_from])  if params[:votes_from]
    @items = @items.order("votes_count DESC", "price")
  end
end
