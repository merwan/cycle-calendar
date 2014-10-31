require 'rails_helper'

feature 'Smoke test' do
  scenario 'Alice can add her period dates and retrieve them later', js: true do
    # Alice visit the website to help her remember her period dates
    visit('/')

    # She notices the title and header mention periods
    expect(page).to have_title('Menstrual cycle tracker for women')
    expect(find('h1')).to have_content('Calculate your next menstrual cycle period')

    # She is invited to enter the beginning of menstruation
    inputbox = find_field('id_new_menstruation')
    expect(inputbox[:placeholder]).to eq('Beginning of menstruation')

    # She types her date for the beginning of menstruation
    fill_in('id_new_menstruation', with: '2014-10-01')

    # When she hits enter, the page updates and lists
    # her three next menstruation dates
    # "2014-10-29"
    # "2014-11-26"
    # "2014-12-24"
    inputbox.native.send_keys :enter
    table = find('#id_menstruations_table')
    rows = table.find('tr')
    expect(rows).to have_content('2014-10-29')
    expect(rows).to have_content('2014-11-26')
    expect(rows).to have_content('2014-12-24')
  end
end
