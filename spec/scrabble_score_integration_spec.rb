require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble score path', {:type => :feature}) do
  it('takes a word and returns the scrabble score') do
    visit '/'
    click_link 'Scrabble Score'
    fill_in 'word', with: 'a'
    click_button 'Send'
    expect(page).to have_content 1
  end
end
