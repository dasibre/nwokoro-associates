class AttorneysController < ApplicationController
  def index
  	@attorneys = Attorney.all
  end

  def show
  	@attorney = Attorney.find(params[:id])
  end
end
