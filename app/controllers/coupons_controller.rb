class CouponsController < ActionController::Base 

  def index 
    @coupons = Coupon.all 
  end 

  def show
    @coupon = Coupon.find_by(id: params[:id])
  end 

  def new 
  end 

  def create
    @coupon = Coupon.new(store: params[:coupon][:store], coupon_code: params[:coupon][:coupon_code])
    @coupon.save 
    redirect_to coupon_path(@coupon)
  end 

end 