require "rails_helper"


RSpec.describe DiariesController, :type => :controller do
    
    login_user


    describe "test web requests" do
        context "GET #index" do
            it "returns a success response" do
            get :index
            expect(response).to have_http_status(:ok)
            end
        end


        context "GET #show" do
            let!(:project) { Diary.create(tite: "Test title", description: "Test description") }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end

        context "GET #edit" do
           let!(:project) { Diary.update(tite: "Test title", description: "Test description") }
           it "returns a success response" do
               expect(response).to have_http_status(:ok)
           end
       end

       context "GET #delete" do
           let!(:project) { Diary.delete(tite: "Test title", description: "Test description") }
           it "returns a success response" do
               expect(response).to have_http_status(:ok)
           end
       end

       context "Login" do
        scenario "should sign up" do
          visit root_path
          click_link 'Sign up'
          within("form") do
            fill_in "Email", with: "testing@test.com"
            fill_in "Password", with: "123456"
            fill_in "Password confirmation", with: "123456"
            click_button "Sign up"
          end
          expect(page).to have_content("Welcome! You have signed up successfully.")
        end
    
        scenario "should log in" do
          user = FactoryBot.create(:user)
          login_as(user)
          visit root_path
          expect(page).to have_content("Logged in")
        end
      end

      context "Create new project" do
        before(:each) do
          user = FactoryBot.create(:user)
          login_as(user)
          visit new_project_path
        end
      end
    

    end
end
