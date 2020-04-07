class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :assign]
  before_action :get_stock_by_store, only: [:assign, :show]
  # GET /products
  # GET /products.json
  def index
    @products = Product.paginate(page: params[:page])
  end

  # GET /products/1
  # GET /products/1.json
  def show
    
  end

  def assign
    break_save = false
    stores = product_params[:store]
    respond_to do |format|
      #For each stores I try to create a detail.
      stores.each do |detail|
        store = StoreProduct.where(store_id: detail.dig(:did), product_id: detail.dig(:product_id)).first_or_initialize
        store.stock = detail.dig(:stock)
        @product.stock = @product.stock - store.stock
        if !store.save
          @store_product = store 
          format.html { render :show}
        end
      end
      format.html { redirect_to product_url(@product, notice: t('.success')) }
    end
    
  end

  # GET /products/new
  def new
    @product = Product.new
    @categories = Category.all    
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    
    respond_to do |format|
      if @product.save
        format.html { redirect_to products_url, notice: t(:success,@product.name) }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to products_url, notice:  t(:success,@product.name) }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    product= @product.name
    message = :success
    respond_to do |format|
      if @product.destroy
        message = t('.success', name: product)
      else
        message = t(:error_on_destroy, name: product)
      end
      format.html { redirect_to products_url, notice: message  }
      format.json { head :no_content }          
    end

  end

  private

  def get_stock_by_store
    @stores = Store.joins('LEFT OUTER JOIN store_products ON store_products.store_id = stores.id and product_id=' + @product.id.to_s)
                .select("stores.name, stores.id, store_products.stock")
    @available_units = (@product.stock>0)?(@product.stock - @stores.sum("stock")):0
    @store_product = StoreProduct.new    
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
      @categories = Category.all
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :color, :size, :price,:category_id, :stock, :store => [
                                         :did, :product_id, :stock
                                      ])
    end
    def detail_params
      params.require(:detail).permit(:id,
        store: [:store_id, :product_id, :stock])
    end    
end
