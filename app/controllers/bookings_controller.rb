class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def new
  end

  def create
  end
end
