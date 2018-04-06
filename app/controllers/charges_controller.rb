class ChargesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
  end

  def create
  end
end
