require_relative '../../app'

  feature 'testing infrastructure' do

    scenario 'players can input names in a form' do
      sign_in_and_play
      expect(page).to have_content("Euge the Hippy with Alex the Hippy")
    end
    
    scenario 'displays player 2 LP' do
      sign_in_and_play
      expect(page).to have_content("Alex's LP: 1")
    end

    scenario 'display confirmation after player 1 helps' do
      sign_in_and_play
      click_button 'Help'
      expect(page).to have_content 'Euge helped Alex'
    end

    scenario "players' help increases friend's LP" do
      sign_in_and_play
      click_button 'Help'
      expect(page).to have_content 'Euge LP: 11'
    end

  end
