require 'rails_helper'

describe HomeController do
  describe 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'POST #index' do
    it 'calculates the next menstruation date' do
      initial_date = Date.new(2014,10,12)
      next_date = Date.new(2014,12,24)
      allow(MenstruationCalculator).to receive(:next) { initial_date }.and_return(next_date)
      post :index, { 'menstruation_date' => initial_date }

      expect(assigns(:menstruation_date)).to eq(next_date)
    end

    it 'passes the initial date to view' do
      initial_date = Date.new(2014,10,12)
      post :index, { 'menstruation_date' => initial_date }

      expect(assigns(:initial_date)).to eq(initial_date)
    end
  end
end
