class PurchaseController < ApplicationController

  def index
    @foods = Food.all
  end

  def create
    @food = Food.new
    @food.item = params[:item]
    @food.cost = params[:cost]
    @food.description = params[:description]
    @food.vendor = params[:vendor]
    @food.created_at = params[:created_at]
    if @food.save
      redirect_to "/"
    else
      @foods = Food.all
      render :index
    end
  end

  def delete
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to "/"
  end

  # def monthly_total
  #   raise ArgumentError, params[:id]
  #   @foods = Food.all
  #   total_hash = Food.group("DATE_TRUNC('month', created_at)").sum(:cost)
  # end

end
