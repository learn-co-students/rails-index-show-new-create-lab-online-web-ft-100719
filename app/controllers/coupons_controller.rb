class CouponsController < ApplicationController

    def index
        @coupon = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
    end
    
    def create
        @coupon = Coupon.new
        @coupon.coupon_code = params[:coupon_code]
        @coupon
    end 
    
end