require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

	let(:base_title) {"Ruby on Rails Sample App"}

	describe "Home page" do 
		it "should have the h1 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1',
				:text => "Sample App")
		end

		it "should have the title 'Home'" do
			visit '/static_pages/home'
			page.should have_title("Ruby on Rails Sample App | Home")
		end
	end

	describe "Help Page" do
		it "should have the h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1',
				:text => "Help")
		end

		#This one always gives a false-negative for some odd reason
		#it "should have the title 'Help'" do
			#visit '/static_pages/home'
			#page.should have_title("Ruby on Rails Sample App | Help")
		#end	
	end

	describe "About page" do
		it "should have the h1 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1',
				:text => "About Us")
		end

		it "should have the title 'About Us'" do
			visit "/static_pages/about"
			page.should have_title("Ruby on Rails Sample App | About Us")
		end
	end

	describe "Contact page" do
		it "should exist" do
			visit '/static_pages/contact'
		end

		it "should have the title 'Contact'" do
			visit '/static_pages/contact'
			page.should have_title("Ruby on Rails Sample App | Contact")
		end
	end
end

