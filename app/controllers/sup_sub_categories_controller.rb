class SupSubCategoriesController < ApplicationController
  before_action :set_sup_sub_category, only: %i[ show edit update destroy ]

  # GET /sup_sub_categories or /sup_sub_categories.json
  def index
    @sup_sub_categories = SupSubCategory.all
  end

  # GET /sup_sub_categories/1 or /sup_sub_categories/1.json
  def show
  end

  # GET /sup_sub_categories/new
  def new
    @sup_sub_category = SupSubCategory.new
  end

  # GET /sup_sub_categories/1/edit
  def edit
  end

  # POST /sup_sub_categories or /sup_sub_categories.json
  def create
    @sup_sub_category = SupSubCategory.new(sup_sub_category_params)

    respond_to do |format|
      if @sup_sub_category.save
        format.html { redirect_to sup_sub_category_url(@sup_sub_category), notice: "Sup sub category was successfully created." }
        format.json { render :show, status: :created, location: @sup_sub_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sup_sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sup_sub_categories/1 or /sup_sub_categories/1.json
  def update
    respond_to do |format|
      if @sup_sub_category.update(sup_sub_category_params)
        format.html { redirect_to sup_sub_category_url(@sup_sub_category), notice: "Sup sub category was successfully updated." }
        format.json { render :show, status: :ok, location: @sup_sub_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sup_sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sup_sub_categories/1 or /sup_sub_categories/1.json
  def destroy
    @sup_sub_category.destroy

    respond_to do |format|
      format.html { redirect_to sup_sub_categories_url, notice: "Sup sub category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sup_sub_category
      @sup_sub_category = SupSubCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sup_sub_category_params
      params.require(:sup_sub_category).permit(:number, :name, :sub_category_id)
    end
end
