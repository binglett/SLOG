class BringlistController < ApplicationController
  def new
  end

  def delete
  end

  def edit
  end

  def show
  	@event = Event.find(params[:id])

  end

end
