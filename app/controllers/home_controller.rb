class HomeController < ApplicationController
  def index
    if request.post?
      @initial_date = Date.parse(menstruation_params)
      @menstruation_date = MenstruationCalculator.next(@initial_date)
    end
  end

  private

  def menstruation_params
    params.require(:menstruation_date)
  end
end
