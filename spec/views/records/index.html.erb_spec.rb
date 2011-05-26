require 'spec_helper'

describe "records/index.html.erb" do
  before(:each) do
    assign(:records, [
      stub_model(Record,
        :site_id => 1,
        :p1_val => "",
        :p2_val => "",
        :p3_val => "",
        :p4_val => "",
        :p5_val => "",
        :p6_val => "",
        :p7_val => "",
        :p8_val => "",
        :p9_val => "",
        :p10_val => "",
        :p11_val => "",
        :p12_val => ""
      ),
      stub_model(Record,
        :site_id => 1,
        :p1_val => "",
        :p2_val => "",
        :p3_val => "",
        :p4_val => "",
        :p5_val => "",
        :p6_val => "",
        :p7_val => "",
        :p8_val => "",
        :p9_val => "",
        :p10_val => "",
        :p11_val => "",
        :p12_val => ""
      )
    ])
  end

  it "renders a list of records" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
