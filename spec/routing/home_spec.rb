require 'rails_helper'

describe 'routing to home' do
  it 'routes /' do
    expect(get: '/').to route_to(
      controller: 'home',
      action: 'index'
    )
  end

  it 'routes POST /' do
    expect(post: '/').to route_to(
      controller: 'home',
      action: 'index'
    )
  end
end
