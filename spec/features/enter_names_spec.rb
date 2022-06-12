feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    # save_and_open_page # will save the web page and open the browser to display it
    expect(page).to have_content 'Charlotte vs. Mittens'
  end
end

# Visit the home page ('/')
# Fill in a text field with a name
# Fill in a second text field with a name
# Click a Submit button