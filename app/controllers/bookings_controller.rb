class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
  end

  def create
  end
end
