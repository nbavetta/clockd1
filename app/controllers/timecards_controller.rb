class TimecardsController < ApplicationController
  
  def new
    @timecard = Timecard.new
    render :show_form
  end
  
  def create     
    @timecard = Timecard.new(timecard_params)    
    @timecard.user = current_user
    authorize! :create, @timecard
    save_timecard
  end   
  
  def edit
    @timecard = Timecard.find(params[:id])
    authorize! :edit, @timecard
    render :show_form
  end
    
  def update 
    @timecard = Timecard.find(params[:id]) 
    @timecard.update_attributes(timecard_params)
    authorize! :update, @timecard
    save_timecard
  end  
  
  def destroy 
    @timecard = Timecard.find(params[:id]) 
    authorize! :destroy, @timecard
    @timecard.destroy 
    @timecards = Timecard.accessible_by(current_ability)
  end
  
  private
  
  def save_timecard 
    if @timecard.save 
      @timecards = Timecard.accessible_by(current_ability)
      render :hide_form 
    else 
      render :show_form 
    end 
  end
  
  def timecard_params     
    params.require(:timecard).permit(:title, :note, :completed)   
  end  
end