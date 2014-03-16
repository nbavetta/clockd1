class PagesController < ApplicationController
  def home
    @timecards = Timecard.accessible_by(current_ability)
  end
end
