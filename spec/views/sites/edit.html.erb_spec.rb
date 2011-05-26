require 'spec_helper'

describe "sites/edit.html.erb" do
  before(:each) do
    @site = assign(:site, stub_model(Site,
      :name => "MyString",
      :p1_name => "MyString",
      :p2_name => "MyString",
      :p3_name => "MyString",
      :p4_name => "MyString",
      :p5_name => "MyString",
      :p6_name => "MyString",
      :p7_name => "MyString",
      :p8_name => "MyString",
      :p9_name => "MyString",
      :p10_name => "MyString",
      :p11_name => "MyString",
      :p12_name => "MyString"
    ))
  end

  it "renders the edit site form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sites_path(@site), :method => "post" do
      assert_select "input#site_name", :name => "site[name]"
      assert_select "input#site_p1_name", :name => "site[p1_name]"
      assert_select "input#site_p2_name", :name => "site[p2_name]"
      assert_select "input#site_p3_name", :name => "site[p3_name]"
      assert_select "input#site_p4_name", :name => "site[p4_name]"
      assert_select "input#site_p5_name", :name => "site[p5_name]"
      assert_select "input#site_p6_name", :name => "site[p6_name]"
      assert_select "input#site_p7_name", :name => "site[p7_name]"
      assert_select "input#site_p8_name", :name => "site[p8_name]"
      assert_select "input#site_p9_name", :name => "site[p9_name]"
      assert_select "input#site_p10_name", :name => "site[p10_name]"
      assert_select "input#site_p11_name", :name => "site[p11_name]"
      assert_select "input#site_p12_name", :name => "site[p12_name]"
    end
  end
end
