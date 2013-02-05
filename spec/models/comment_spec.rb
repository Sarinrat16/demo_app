require 'spec_helper'

describe Comment do
<<<<<<< HEAD
	before { @comment = Comment.new( body: "Hello" ) }
  	subject {@comment}

  	it { should respond_to(:body) }

 describe "when Body format is valid" do
 	before { @comment.body = "" }
 	it { should_not be_valid } 	
  end	
end
=======

	before { @comment = Comment.new( body: "Sawaddee" ) }
	subject {@comment}

it { should respond_to(:body) }

describe "when Body format is valid" do
	before { @comment.body = "" }
	it { should_not be_valid }  
	end
end

>>>>>>> 86a70ec72ee5e896162a389b772165ef96e21b26
