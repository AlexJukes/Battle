def sign_in_and_play
      visit '/'
      fill_in :player_1, with: 'Euge'
      fill_in :player_2, with: 'Alex'
      click_button 'Submit Player Names'
end
