class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def accept_booking?
    record.jewel.user == user
  end

  def cancel_booking?
    record.user == user || record.jewel.user == User
  end

  def total_price
    true
  end
end
