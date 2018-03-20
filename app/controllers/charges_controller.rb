class ChargesController < ApplicationController
  def index
  end

  def create
    # Get the parameters required to make a charge
    # Amount will also be used to select the api response we want to get back
    # from testing pays

    _amount = params[:amount]

    # No errors, return the charge to the user
    render json: {}
  end
end
