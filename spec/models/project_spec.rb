require "rails_helper"

describe "Project Attribute Requirements on Create", :type => :model do
  context "validation tests" do
    it "ensures the title is present when creating project" do
      project = Diary.new(description: "Content of the description")
      expect(project.valid?).to eq(false)
    end
    it "should not be able to save project when title missing" do
      project = Diary.new(tite: "Some description content goes here")
      expect(project.save).to eq(false)
    end
    it "should be able to save project when have description and title" do
      project = Diary.new(tite: "Title", description: "Content of the description")
      expect(project.save).to eq(false)
    end

    it " has a description when creating and editing." do
        project = Diary.update(tite: "Title", description: "Content of the description")
      end

      it "should not be able to save project when description missing" do
        project = Diary.new(description: "Some description content goes here")
        expect(project.save).to eq(false)
      end
      it "should not be able to save project when description missing" do
        project = Diary.new(summary: "Some description content goes here")
        expect(project.save).to eq(false)
      end
  end
end


describe "Project Attribute Requirements on Edit", :type => :model do
  context "Edit project" do  
    before (:each) do
      @project = Diary.create(tite: "Title", description: "Content of the description", summary: "summary description")
      end
    it "ensures the title is present when editing project" do
      @project.update(:tite => "New Title")
      expect(@project.tite == "New Title")
    end

    it "ensures the description is present when editing project" do
        @project.update(:description => "New Description")
        expect(@project.description == "New Description")
      end
  end
end
