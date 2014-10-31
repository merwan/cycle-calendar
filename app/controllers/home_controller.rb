class HomeController < ApplicationController
  def index
    if request.post?
      @menstruation_date = menstruation_params
    end
  end

  private

  def menstruation_params
    params.require(:menstruation_date)
  end
end
