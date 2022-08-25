class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def index
  @users = User.all
  end

  def home
    @jewels = Jewel.all
  end

  def dashboard
    @bookings_i_made = Booking.where(user: current_user)
    @jewels = Jewel.where(user: current_user)
    # On veut récupérer uniquement les bookings des jewel_id pour lesquels le user_id(dans la table jewel) est current_user.
    @bookings_for_my_jewels = Booking.joins(:jewel).where(jewel: { user: current_user })
  end

  def accept_booking
    @booking = Booking.find(params[:booking_id])
    authorize @booking
    @booking.validated!
    @booking.save
    redirect_to dashboard_path
  end

<<<<<<< HEAD
  def cancel_booking
    @booking = Booking.find(params[:booking_id])
    authorize @booking
    @booking.canceled!
    @booking.save
    redirect_to dashboard_path
=======
  def notifications
    @bookings = Booking.all
    @bookings.select { |booking| booking.pending?}.count
>>>>>>> 433be24dc289cdec0895bace661fa8849935e97e
  end
end
