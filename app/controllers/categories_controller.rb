class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.paginate(page: params[:page])
    respond_to do |format|
      format.html
      format.json { render :json=> Category.search(params[:term]).map{|cat| {label: cat.name, value: cat.id}}.to_json }
    end
  end

  
  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @category = Category.new

    respond_to do |format|
        format.js 
    end
  end

  # GET /categories/1/edit
  def edit
      respond_to do |format|
        format.js 
    end
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)

    @category.name.upcase!
    @category.save
    render 'create'
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    @categories = Category.all
    @category.update(category_params)
    render 'update'
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    category = @category.name
    @cateid = @category.id
    @category.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
      
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name, :tag_list)
    end
end
