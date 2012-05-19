class CardPunchesController < ApplicationController
  # GET /card_punches
  # GET /card_punches.xml
  def index
    t=Time.now
    @punched_month=DateTime.new(t.year,t.month,1)
    # @punched_month=Time.now
    t("date.month_names")[8]
    @card_punches = CardPunch.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @card_punches }
    end
  end

  # GET /card_punches/1
  # GET /card_punches/1.xml
  def show
    @card_punch = CardPunch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @card_punch }
    end
  end

  # GET /card_punches/new
  # GET /card_punches/new.xml
  def new
    @card_punch = CardPunch.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @card_punch }
    end
  end

  # GET /card_punches/1/edit
  def edit
    @card_punch = CardPunch.find(params[:id])
  end

  # POST /card_punches
  # POST /card_punches.xml
  def create
    @card_punch = CardPunch.new(params[:card_punch])

    respond_to do |format|
      if @card_punch.save
        format.html { redirect_to(@card_punch, :notice => 'CardPunch was successfully created.') }
        format.xml  { render :xml => @card_punch, :status => :created, :location => @card_punch }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @card_punch.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /card_punches/1
  # PUT /card_punches/1.xml
  def update
    @card_punch = CardPunch.find(params[:id])

    respond_to do |format|
      if @card_punch.update_attributes(params[:card_punch])
        format.html { redirect_to(@card_punch, :notice => 'CardPunch was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @card_punch.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /card_punches/1
  # DELETE /card_punches/1.xml
  def destroy
    @card_punch = CardPunch.find(params[:id])
    @card_punch.destroy

    respond_to do |format|
      format.html { redirect_to(card_punches_url) }
      format.xml  { head :ok }
    end
  end
end
