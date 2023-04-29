require "rails_helper"


RSpec.feature "Projects", type: :feature do
    context "Update project" do
      let(:project) { Diary.create(tite: "Test title", description: "Test content") }
      before(:each) do
        visit edit_project_path(project)
      end
 
 
      scenario "should be successful" do
        within("form") do
          fill_in "Description", with: "New description content"
        end
        click_button "Update Project"
        expect(page).to have_content("Project was successfully updated")
      end
 
      scenario "should be successful" do
        within("form") do
            fill_in "Description", with: "New description content"
            fill_in "Title", with: "New title content"         
        end
        click_button "New Project"
        expect(page).to have_content("Project was successfully updated")
      end
 
      scenario "should fail" do
        within("form") do
          fill_in "Description", with: ""
        end
        click_button "Update Project"
        expect(page).to have_content("Description can't be blank")
      
        within("form") do
            fill_in "Title", with: ""
          end
          click_button "Update Project"
          expect(page).to have_content("Title can't be blank")
    end
    scenario "should fail" do
        within("form") do
            fill_in "Description", with: ""
          end
       
          click_button "New Project"
          expect(page).to have_content("Description can't be blank")
         
        within("form") do
            fill_in "Title", with: ""
          end
          click_button "New Project"
          expect(page).to have_content("Title can't be blank")
      end
    end
end
 
