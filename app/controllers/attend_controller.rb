class AttendController < ApplicationController

  def index
    @attend = Attend.all
  end

  def new
  	@attend = Attend.new
  end

    def create
    @attend = Attend.new(event_params)

    respond_to do |format|
      if @attend.save
        format.html { redirect_to action: "index", notice: 'Event was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
   @attend.delete
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Attend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
