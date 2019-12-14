class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find_by(id: params[:id])
  end

  def new
  end

  def create
    coupon = Coupon.new(params[:coupon].to_unsafe_hash)
    coupon.save
    redirect_to coupon_path(coupon)
  end

end
