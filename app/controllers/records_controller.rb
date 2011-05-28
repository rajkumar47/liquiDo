class RecordsController < ApplicationController
  # --------- 
  def index
    @records = Record.all
  end

  # ------------ 
  def show
    @record = Record.find(params[:id])
    @site = @record.site
    @positions  = @site.used
    @fields     = @site.used_vars
  end

  # ----------------- 
  def new
    @site = Site.find( params[:site_id] )
    @record = @site.records.new
  end

  # --------------------- 
  def edit
    @record = Record.find(params[:id])
    @site = @record.site
  end

  # ------------------- 
  def create
    @site = Site.find( params[:record][:site_id] )
    @record = @site.records.build(params[:record])

    if @record.save
      redirect_to(@record, :notice => 'Record was successfully created.') 
    else
      render :action => "new" 
    end
  end

  # ---------------- 
  def update
    @record = Record.find(params[:id])
    @site = @record.site

    if @record.update_attributes(params[:record])
      redirect_to(@record, :notice => 'Record was successfully updated.') 
    else
      render :action => "edit"
    end
  end

  # -------------------- 
  def destroy
    @record = Record.find(params[:id])
    @record.destroy

    redirect_to(records_url)
  end
end
