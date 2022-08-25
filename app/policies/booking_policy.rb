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

  def update_status?
    true
  end

<<<<<<< HEAD
  def cancel_booking?
    record.user == user || record.jewel.user == user
=======
  def total_price
    true
>>>>>>> c64ef0cc79dc49be4c07f434c98826eccea93bc8
  end
end
