require 'rails_helper'

describe 'routing to home' do
  it 'routes /' do
    expect(get: '/').to route_to(
      controller: 'home',
      action: 'index'
    )
  end
end
