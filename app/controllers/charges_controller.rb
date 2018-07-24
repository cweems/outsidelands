class ChargesController < ApplicationController

  def new
      @phone_number = params[:p]
  end

  def create

    @amount = 500

    customer = Stripe::Customer.create(
      :source => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer     => customer.id,
      :amount       => @amount,
      :description  => 'Rails Stripe customer',
      :currency     => 'usd'
    )

    

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

end
