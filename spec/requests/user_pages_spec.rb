<<<<<<< HEAD
describe "UserPages" do
#this view test
subject { page }

describe "signup page" do
before { visit signup_path }

it { should have_selector('h1', text: 'Sign up' ) }

end

describe "signup" do

before { visit signup_path } # open sign up view
let(:submit) { "Sign up" } #visit signup pang and press submit button

describe "with invalid information" do
it "should not creat a user" do
expect { click_button submit }.not_to change(User, :count) #if click button user not ++
end

describe "after submission" do
before { click_button submit }

it { should have_content('error') }
end
end

describe "with valid information" do
before do
#visualize text fill
fill_in "Name", with: "funnjicko" #put deathwing in name text
fill_in "Email", with: "kp@dg.com" #put dg@kp.com in email text
fill_in "Password", with: "123456789" #put 123456789 in password
fill_in "Password Comfirmation", with: "123456789" #put 123456789 in password confirm
end
it "should create a user" do
expect { click_button submit }.to change(User, :count).by(1) #if click button user ++
end

end
end
end
=======
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
>>>>>>> 86a70ec72ee5e896162a389b772165ef96e21b26
