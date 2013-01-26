require 'spec_helper'

describe "UserPages" do

  subject { page }

  describe"signup page" do
  	before { visit signup_path } # go to localhost:3000/users/new

  	it {should have_selector('h1', text: 'Sing up')}  
  end

  describe "signup" do
  	before { visit signup_path }
  	let(:submit) { "Sign up" }

  describe "with invalid information" do
  	it "should not create user" do
  		expect { click_button submit }.not_to change(User, :count)
  	end
  end
  	
  	describe "with invalid information" do
  		before do
  			fill_in "Name", with: "Foo Bar"
  			fill_in "Email", with: "foo@gmail.com"
  			fill_in "Password" with: "foobar"
  			fill_in "Password Confirmation" with: "foobar"
  		end
  		
  		it "should create a user" do
  			expect { click_button submit }.to change(User, :count).by(1)	
  		end	
  		
  	end
  end	
end
