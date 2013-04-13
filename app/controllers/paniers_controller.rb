class PaniersController < ApplicationController
  # GET /paniers
  # GET /paniers.xml
  def index
    @paniers = Panier.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @paniers }
    end
  end

  # GET /paniers/1
  # GET /paniers/1.xml
  def show
    @panier = Panier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @panier }
    end
  end

  # GET /paniers/new
  # GET /paniers/new.xml
  def new
    @panier = Panier.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @panier }
    end
  end

  # GET /paniers/1/edit
  def edit
    @panier = Panier.find(params[:id])
  end

  # POST /paniers
  # POST /paniers.xml
  def create
    @panier = Panier.new(params[:panier])

    respond_to do |format|
      if @panier.save
        format.html { redirect_to(@panier, :notice => 'Panier was successfully created.') }
        format.xml  { render :xml => @panier, :status => :created, :location => @panier }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @panier.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /paniers/1
  # PUT /paniers/1.xml
  def update
    @panier = Panier.find(params[:id])

    respond_to do |format|
      if @panier.update_attributes(params[:panier])
        format.html { redirect_to(@panier, :notice => 'Panier was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @panier.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /paniers/1
  # DELETE /paniers/1.xml
  def destroy
    @panier = Panier.find(params[:id])
    @panier.destroy

    respond_to do |format|
      format.html { redirect_to(paniers_url) }
      format.xml  { head :ok }
    end
  end
end
