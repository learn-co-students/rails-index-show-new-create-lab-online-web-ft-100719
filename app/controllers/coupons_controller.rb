class CouponController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def new
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def create
        @coupon = Coupon.new
        @coupon.coupon_code 
    end

end
end