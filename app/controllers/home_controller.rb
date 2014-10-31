class HomeController < ApplicationController
  def index
    if request.post?
      date = Date.parse(menstruation_params)
      next_date = MenstruationCalculator.next(date)
      @menstruation_date = next_date
    end
  end

  private

  def menstruation_params
    params.require(:menstruation_date)
  end
end
