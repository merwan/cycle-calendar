require 'rails_helper'

feature 'Smoke test' do
  scenario 'Alice can add her period dates and retrieve them later' do
    # Alice visit the website to help her remember her period dates
    visit('/')

    # She notices the header mention periods
    expect(find('h1')).to have_content('Check your period')
    pending 'Finish the test'

    # She is invited to enter her period date straight away
    #inputbox = find('#id_new_period')
    #expect(inputbox[:placeholder]).to eq('Enter a period date')

    # She types her last period date into a text box
    #fill_in('Period date', with: '2014-10-29')

    # When she hits enter, the page updates and lists
    # "2014-10-29" as a period date

    # There is still a text box to enter another period date
    # Sshe enters another date
    #fill_in('Period date', with: '2014-09-27')

    # The page updates the page and now lists both dates
  end
end
