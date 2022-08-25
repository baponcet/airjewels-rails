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

<<<<<<< HEAD
  def cancel_booking?
    record.user == user || record.jewel.user == user
=======
  def total_price
    true
>>>>>>> 433be24dc289cdec0895bace661fa8849935e97e
  end

  def total_price
    true
  end
end
