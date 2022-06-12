feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    # save_and_open_page # will save the web page and open the browser to display it
    expect(page).to have_content 'Mittens: 60HP'
  end
end



# Visit the home page ('/')
# Fill in a text field with a name
# Fill in a second text field with a name
# Click a Submit button