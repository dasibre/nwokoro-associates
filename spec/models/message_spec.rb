require 'spec_helper'

describe Message do
  before { @message = Message.new(name: "Joe smith", 
  								  email: "jsmith@example.com", 
  								  subject: "construction accident", 
  								  body: "Had an accident on site")}

  subject {@message}

  it {should respond_to(:name)}
  it {should respond_to(:email)}
  it {should respond_to(:subject)}
  it {should respond_to(:body)}

  describe "when name is blank" do
  	# let(:message) { @message.name = ""}
  	before { @message.name = ""}

  	it { should_not be_valid }
  end
end
