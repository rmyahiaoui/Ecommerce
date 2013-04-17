class CommandesController < ApplicationController
  # GET /commandes
  # GET /commandes.xml
  def index
    @commandes = Commande.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @commandes }
    end
  end

  # GET /commandes/1
  # GET /commandes/1.xml
  def show
    @commande = Commande.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @commande }
    end
  end

  # GET /commandes/new
  # GET /commandes/new.xml
  def new
    #Ajout de l'article au panier
      @commande = Commande.new(:produit_id => params[:format] ,:user_id => current_user.id,:payer => false)
      @commande.save
     @commandes = Commande.find_by_user_id(current_user.id)

  end

  # GET /commandes/1/edit
  def edit
    @commande = Commande.find(params[:id])
  end

  # POST /commandes
  # POST /commandes.xml
  def create
    @commande = Commande.new(params[:commande])
    
    respond_to do |format|
      if @commande.save
        format.html { redirect_to(@commande, :notice => 'Commande was successfully created.') }
        format.xml  { render :xml => @commande, :status => :created, :location => @commande }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @commande.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /commandes/1
  # PUT /commandes/1.xml
  def update
    @commande = Commande.find(params[:id])
   
  end
    respond_to do |format|
      if @commande.update_attributes(:payer => true)
        format.html { redirect_to(@commande, :notice => 'Votre commande a ete pris on compte.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @commande.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /commandes/1
  # DELETE /commandes/1.xml
  def destroy
    @commande = Commande.find(params[:commande])
    @commande.destroy

    respond_to do |format|
      format.html { redirect_to(commandes_url) }
      format.xml  { head :ok }
    end
  end

  def payement
    @commande = Commande.find(params[:commande])
  end

def commandeEffectuer
    @commandes = Commande.find_all_by_payer(true)# lister juste les produits payer 
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @commandes }
    end
  end
  

end
