class ProitemsController < ApplicationController
  # GET /proitems
  # GET /proitems.json
  def index
    @proitems = Proitem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proitems }
    end
  end

  # GET /proitems/1
  # GET /proitems/1.json
  def show
    @proitem = Proitem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proitem }
    end
  end

  # GET /proitems/new
  # GET /proitems/new.json
  def new
    @proitem = Proitem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proitem }
    end
  end

  # GET /proitems/1/edit
  def edit
    @proitem = Proitem.find(params[:id])
  end

  # POST /proitems
  # POST /proitems.json
  def create
    #@proitem = Proitem.new(params[:proitem])
    #@product = Product.find(params[:product_id])
    #@proitem = Proitem.new(:product_id => @product.id)
    @cart = current_cart
    @product = Product.find(params[:product_id])
    @proitem = @cart.proitems.build(:product_id => @product.id)
    respond_to do |format|
      if @proitem.save
        format.html { redirect_to @product, notice: 'Proitem was successfully created.' }
        format.json { render json: @proitem, status: :created, location: @proitem }
      else
        format.html { render action: "new" }
        format.json { render json: @proitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proitems/1
  # PUT /proitems/1.json
  def update
    @proitem = Proitem.find(params[:id])

    respond_to do |format|
      if @proitem.update_attributes(params[:proitem])
        format.html { redirect_to @proitem, notice: 'Proitem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @proitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proitems/1
  # DELETE /proitems/1.json
  def destroy
    @proitem = Proitem.find(params[:id])
    @proitem.destroy

    respond_to do |format|
      format.html { redirect_to proitems_url }
      format.json { head :no_content }
    end
  end
end
