class CategorisController < ApplicationController
  # GET /categoris
  # GET /categoris.xml
  def index
    #params[:nom] c'est pour effectuer la recherche d'une categorie dans la liste
    @var=params[:nom] 
    if(params[:nom] == nil )
      @categoris = Categori.all
    else
      @categoris = Categori.find(:all, 
      :conditions=> ["nom like :eq", {:eq => @var + "%"}]) 
    end
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
        format.html { redirect_to(@categori, :notice => 'La gategorie a ete cree avec succee.') }
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
        format.html { redirect_to(@categori, :notice => 'La gategorie a ete M.A.J avec succee.') }
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

  def listProduit 
  # lister les produits par categoris
   # params[:nom] c'est pour rechercher un produit dans la liste des produits d'une categorie
    @pro = params[:nom]
    if( params[:nom] == nil )
      @categori = Categori.find(params[:categori])
      @produits = @categori.produits
    else
      @produits = Produit.find(:all, 
      :conditions=> ["nom like :eq ", {:eq =>  @pro + "%"}]) 
    end
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @produit }
    end
  end 
  
end

 