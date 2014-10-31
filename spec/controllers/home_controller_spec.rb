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
      allow(MenstruationCalculator).to receive(:next) { Date.new(2014,10,12) }.and_return(Date.new(2014,12,24))
      post :index, { 'menstruation_date' => '2014-10-12' }

      expect(assigns(:menstruation_date)).to eq('2014-12-24')
    end
  end
end
