class CouponsController < ApplicationController
  def new
  @coupon = Coupon.new
  end
  
  def index
  @coupons = Coupon.all
  end

  def create
  @coupon = Coupon.create(coupon_params)
  redirect_to coupon_path(@coupon)
  end

  def edit
  @coupon = set_coupon
  end

  def update
  @coupon = set_coupon
  @coupon.update(coupon_params)
  redirect_to coupon_path(@coupon)
  end

  def show
  @coupon = set_coupon
  end

  private

  def set_coupon
    Coupon.find_by(id: params[:id]) 
  end

  def coupon_params
  params.require(:coupon).permit(:coupon_code, :store)
  end
end