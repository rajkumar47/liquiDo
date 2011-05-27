class RecordsController < ApplicationController
  # --------- 
  def index
    @records = Record.all
  end

  # ------------ 
  def show
    @record = Record.find(params[:id])
    @site = @record.site
    @positions  = @site.positions
    @fields     = @site.fields
  end

  # ----------------- 
  def new
    @record = Record.new

  end

  # --------------------- 
  def edit
    @record = Record.find(params[:id])
  end

  # ------------------- 
  def create
    @record = Record.new(params[:record])

    if @record.save
      redirect_to(@record, :notice => 'Record was successfully created.') 
    else
      render :action => "new" 
    end
  end

  # ---------------- 
  def update
    @record = Record.find(params[:id])

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
