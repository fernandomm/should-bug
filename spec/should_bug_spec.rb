require 'spec_helper'

describe 'Should bug example' do
  before(:each) do
    # This causes the deprecation warning
    String.stub(:a).and_return(true)
  end

  it "should not show deprecation" do
    true.should be true
  end  
end