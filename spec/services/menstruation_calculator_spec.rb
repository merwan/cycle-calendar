require 'rails_helper'

describe MenstruationCalculator do
  it 'calculates the next menstruation date' do
    date = Date.new(2014,10,1)
    next_date = MenstruationCalculator.next(date)

    expect(next_date).to eq(Date.new(2014,10,29))
  end
end
