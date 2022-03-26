class FintechController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.role == 'prestatario'
      @prestado = Loan.where(lender_id_id: current_user.id).sum('amount')
      @prestamos = Loan.where(lender_id_id: current_user.id)
    end
  end
end
