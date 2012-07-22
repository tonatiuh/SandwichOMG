require 'spec_helper'

describe "MakeSandwiches" do
  context "#index" do
    it "navigates to the create sandwich page" do
      visit root_path
      click_link "create"
      page.should have_content("ingredients")
    end
  end
end
