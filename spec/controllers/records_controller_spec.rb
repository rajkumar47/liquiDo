require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe RecordsController do

  def mock_record(stubs={})
    @mock_record ||= mock_model(Record, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all records as @records" do
      Record.stub(:all) { [mock_record] }
      get :index
      assigns(:records).should eq([mock_record])
    end
  end

  describe "GET show" do
    it "assigns the requested record as @record" do
      Record.stub(:find).with("37") { mock_record }
      get :show, :id => "37"
      assigns(:record).should be(mock_record)
    end
  end

  describe "GET new" do
    it "assigns a new record as @record" do
      Record.stub(:new) { mock_record }
      get :new
      assigns(:record).should be(mock_record)
    end
  end

  describe "GET edit" do
    it "assigns the requested record as @record" do
      Record.stub(:find).with("37") { mock_record }
      get :edit, :id => "37"
      assigns(:record).should be(mock_record)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created record as @record" do
        Record.stub(:new).with({'these' => 'params'}) { mock_record(:save => true) }
        post :create, :record => {'these' => 'params'}
        assigns(:record).should be(mock_record)
      end

      it "redirects to the created record" do
        Record.stub(:new) { mock_record(:save => true) }
        post :create, :record => {}
        response.should redirect_to(record_url(mock_record))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved record as @record" do
        Record.stub(:new).with({'these' => 'params'}) { mock_record(:save => false) }
        post :create, :record => {'these' => 'params'}
        assigns(:record).should be(mock_record)
      end

      it "re-renders the 'new' template" do
        Record.stub(:new) { mock_record(:save => false) }
        post :create, :record => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested record" do
        Record.stub(:find).with("37") { mock_record }
        mock_record.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :record => {'these' => 'params'}
      end

      it "assigns the requested record as @record" do
        Record.stub(:find) { mock_record(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:record).should be(mock_record)
      end

      it "redirects to the record" do
        Record.stub(:find) { mock_record(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(record_url(mock_record))
      end
    end

    describe "with invalid params" do
      it "assigns the record as @record" do
        Record.stub(:find) { mock_record(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:record).should be(mock_record)
      end

      it "re-renders the 'edit' template" do
        Record.stub(:find) { mock_record(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested record" do
      Record.stub(:find).with("37") { mock_record }
      mock_record.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the records list" do
      Record.stub(:find) { mock_record }
      delete :destroy, :id => "1"
      response.should redirect_to(records_url)
    end
  end

end