class CategorisController < ApplicationController
  # GET /categoris
  # GET /categoris.xml
  def index
    @categoris = Categori.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categoris }
    end
  end

  # GET /categoris/1
  # GET /categoris/1.xml
  def show
    @categori = Categori.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @produit }
    end



  end

  # GET /categoris/new
  # GET /categoris/new.xml
  def new
    @categori = Categori.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @categori }
    end
  end

  # GET /categoris/1/edit
  def edit
    @categori = Categori.find(params[:id])
  end

  # POST /categoris
  # POST /categoris.xml
  def create
    @categori = Categori.new(params[:categori])

    respond_to do |format|
      if @categori.save
        format.html { redirect_to(@categori, :notice => 'Categori was successfully created.') }
        format.xml  { render :xml => @categori, :status => :created, :location => @categori }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @categori.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categoris/1
  # PUT /categoris/1.xml
  def update
    @categori = Categori.find(params[:id])

    respond_to do |format|
      if @categori.update_attributes(params[:categori])
        format.html { redirect_to(@categori, :notice => 'Categori was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @categori.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /categoris/1
  # DELETE /categoris/1.xml
  def destroy
    @categori = Categori.find(params[:id])
    @categori.destroy
    respond_to do |format|
      format.html { redirect_to(categoris_url) }
      format.xml  { head :ok }
    end
  end
  
  

  def listCategori
    @categoris = Categori.all
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @categoris }
    end
  end

  def listProduit
     @categori = Categori.find(params[:categori])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @produit }
    end
    end 

end