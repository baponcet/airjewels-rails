class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @jewels = Jewel.all
  end

  def dashboard
    @bookings_i_made = Booking.where(user: current_user)
    @jewels = Jewel.where(user: current_user)
    # On veut récupérer uniquement les bookings des jewel_id pour lesquels le user_id(dans la table jewel) est current_user.
    @bookings_for_my_jewels = Booking.joins(:jewel).where(jewel: { user: current_user })
  end
end
