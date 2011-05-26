require 'spec_helper'

describe "sites/show.html.erb" do
  before(:each) do
    @site = assign(:site, stub_model(Site,
      :name => "Name",
      :p1_name => "P1 Name",
      :p2_name => "P2 Name",
      :p3_name => "P3 Name",
      :p4_name => "P4 Name",
      :p5_name => "P5 Name",
      :p6_name => "P6 Name",
      :p7_name => "P7 Name",
      :p8_name => "P8 Name",
      :p9_name => "P9 Name",
      :p10_name => "P10 Name",
      :p11_name => "P11 Name",
      :p12_name => "P12 Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/P1 Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/P2 Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/P3 Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/P4 Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/P5 Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/P6 Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/P7 Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/P8 Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/P9 Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/P10 Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/P11 Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/P12 Name/)
  end
end
