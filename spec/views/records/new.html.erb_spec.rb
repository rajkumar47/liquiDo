require 'spec_helper'

describe "records/new.html.erb" do
  before(:each) do
    assign(:record, stub_model(Record,
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
    ).as_new_record)
  end

  it "renders new record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => records_path, :method => "post" do
      assert_select "input#record_site_id", :name => "record[site_id]"
      assert_select "input#record_p1_val", :name => "record[p1_val]"
      assert_select "input#record_p2_val", :name => "record[p2_val]"
      assert_select "input#record_p3_val", :name => "record[p3_val]"
      assert_select "input#record_p4_val", :name => "record[p4_val]"
      assert_select "input#record_p5_val", :name => "record[p5_val]"
      assert_select "input#record_p6_val", :name => "record[p6_val]"
      assert_select "input#record_p7_val", :name => "record[p7_val]"
      assert_select "input#record_p8_val", :name => "record[p8_val]"
      assert_select "input#record_p9_val", :name => "record[p9_val]"
      assert_select "input#record_p10_val", :name => "record[p10_val]"
      assert_select "input#record_p11_val", :name => "record[p11_val]"
      assert_select "input#record_p12_val", :name => "record[p12_val]"
    end
  end
end
