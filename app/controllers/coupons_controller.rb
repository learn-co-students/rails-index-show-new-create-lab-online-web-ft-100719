class CouponsController < ApplicationController


    def new

    end

    def create
    @coupon=Coupon.new
    
    end

end
