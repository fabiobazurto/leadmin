class StoresController < ApplicationController
  before_action :set_store, only: [ :edit, :show, :update, :destroy]
  before_action :load_catalog, only: [:new, :edit, :create, :update]
  # GET /stores
  # GET /stores.json
  def index
    @stores = Store.paginate(page: params[:page],per_page: 10)
  end

  # GET /stores/1
  # GET /stores/1.json
  def show

  end

  # GET /stores/new
  def new
    @store = Store.new
  end

  # GET /stores/1/edit
  def edit
  end

  # POST /stores
  # POST /stores.json
  def create
    @store = Store.new(store_params)

    respond_to do |format|
      if @store.save
        format.html { redirect_to stores_url, notice: t(:store_saved_success) }
        format.json { render :show, status: :created, location: @store }
      else
        format.html { render :new }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stores/1
  # PATCH/PUT /stores/1.json
  def update
    respond_to do |format|
      if @store.update(store_params)
        format.html { redirect_to stores_url, notice: t(:store_updated_success) }
        format.json { render :show, status: :ok, location: @store }
      else
        format.html { render :edit }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stores/1
  # DELETE /stores/1.json
  def destroy
    @store.destroy
    flash[:success] =  t(:store_destroyed_success)
    respond_to do |format|
      format.html { redirect_to stores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store
      @store = Store.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def store_params
      params.require(:store).permit(:name, :street, :number, :zipcode, :city_id, :country_id)
    end

    def load_catalog
      @cities = City.all
      @countries = Country.all
    end
end
