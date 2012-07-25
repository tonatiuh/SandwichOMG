require 'spec_helper'
require 'sandwicher'

describe "MakeSandwiches" do
  context "#index" do
    it "visits the home page" do
      visit root_path
      page.should have_content "Welcome to SandwichOMG"
    end
  end
  
  context "#create" do
    it "sends the request to make a sandwich" do
      visit root_path
      click_link "Create"
      fill_in "sandwich_name", with: "some cool name"
      page.select "Meat Lovers", from: "sandwich_type"
      fill_in "sandwich_user_message", with: "sudo make me a sandwich"
      click_button "Create Sandwich"
      page.should have_content "Your request has been submitted"
    end
  end
end
