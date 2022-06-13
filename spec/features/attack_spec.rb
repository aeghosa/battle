feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    # save_and_open_page # will save the web page and open the browser to display it
    expect(page).to have_content 'Charlotte attacked Mittens'
  end
end

# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation