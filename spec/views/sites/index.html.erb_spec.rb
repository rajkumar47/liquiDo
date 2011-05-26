require 'spec_helper'

describe "sites/index.html.erb" do
  before(:each) do
    assign(:sites, [
      stub_model(Site,
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
      ),
      stub_model(Site,
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
      )
    ])
  end

  it "renders a list of sites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "P1 Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "P2 Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "P3 Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "P4 Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "P5 Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "P6 Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "P7 Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "P8 Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "P9 Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "P10 Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "P11 Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "P12 Name".to_s, :count => 2
  end
end
