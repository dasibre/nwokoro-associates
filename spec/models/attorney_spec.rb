require 'spec_helper'

describe Attorney do
  before { @attorney = Attorney.new(first_name: "Emeka", 
  									last_name: "Nwokoro", 
  									profile: "Example profile for attorney emeka" )}

  subject {@attorney}

  it { should respond_to(:first_name)}
  it { should respond_to(:last_name)}
  it { should respond_to(:profile)}
  it { should respond_to(:avatar)}
  it { should respond_to(:has_attached_file)}
end
