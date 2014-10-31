require 'rails_helper'

describe HomeController do
  describe 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'POST #index' do
    it 'assigns menstruation_date' do
      menstruation_date = '2014-10-29'
      post :index, {'menstruation_date' => menstruation_date }
      expect(assigns(:menstruation_date)).to eq(menstruation_date)
    end
  end
end
