require 'spec_helper'

describe Post do
<<<<<<< HEAD
  before { @post = Post.new( body: "Hello", title: "Joob Joob") }
=======
  before { @post = Post.new( body: "Sawaddee^____^", title: "Write here!!!") }
>>>>>>> 86a70ec72ee5e896162a389b772165ef96e21b26
  subject {@post}

  it { should respond_to(:body) }
  it { should respond_to(:title) }

 describe "when Body format is valid" do
 	before { @post.body = "" }
 	it { should_not be_valid }
  end

 describe "when title format is valid" do
 	before { @post.title = "" }
 	it { should_not be_valid }
  end  
end
<<<<<<< HEAD
=======

>>>>>>> 86a70ec72ee5e896162a389b772165ef96e21b26
