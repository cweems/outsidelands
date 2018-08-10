class ChargesController < ApplicationController

  def new
      @phone_number = params[:p]
  end

  def create

    @amount_param = params[:price_input]
    @final_amount = @amount_param.to_i * 100
    @phone_number = params[:phone_number]
    @first_name = params[:firstName]
    @last_name = params[:lastName]

    @metadata = {
      phone_number: @phone_number,
      first_name: @first_name,
      last_name: @lastName
    }

    customer = Stripe::Customer.create(
      :source => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer     => customer.id,
      :amount       => @final_amount,
      :description  => 'Rails Stripe customer',
      :currency     => 'usd',
      :metadata => @metadata
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

end
