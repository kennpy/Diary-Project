RSpec.feature "HomePages", type: :feature do
    scenario "The visitor should see diaries" do
      visit root_path
      expect(page).to have_text("diary")
    end
  end
  