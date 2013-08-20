class AttorneysController < ApplicationController
  def index
  	@attorneys = Attorney.get_associates_order_by_title
  end

  def show
  	@attorney = Attorney.find(params[:id])
  end
end
