class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def new
    end

    def create
        #binding.pry
        @coupon = Coupon.new
        @coupon.coupon_code = params[:coupon][:coupon_code]
        @coupon.store = params[:coupon][:store]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end
    
    def edit
        #binding.pry
        @coupon = find_by_id(params[:coupon][:id])
    end

    def show
        #binding.pry
        @coupon = find_by_id(params[:coupon][:id])
    end

    def update
        #binding.pry
        @coupon = find_by_id(params[:coupon][:id])
        @coupon.update(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        redirect_to coupon_path(@coupon)
    end

    # def destroy
    #     @coupon = find_by_id(params[:coupon][:id])
    #     @coupon.destroy
    #     redirect_to coupons_path
    # end
end
