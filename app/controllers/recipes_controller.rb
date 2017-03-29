class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all

    ###    FILTERING   ###
    # Check the filtering keyworkd and calls helper function in model
    if params[:search]
      # The helper function defined in the model is used here
      @recipes = Recipe.search(params[:search])
    end

    ###    SORTING   ###
    # Sorts all recipes based on the selected sorting column
    if params[:sorting] == 'dish'
      #SQL syntax is used here, replace ASC with DESC if you want reverse order 
      @recipes = @recipes.order('recipes.dish ASC')

    elsif params[:sorting] == 'description'
      @recipes = @recipes.order('recipes.description ASC')
    
    elsif params[:sorting] == 'length'
      @recipes = @recipes.order('recipes.length ASC')
    
    elsif params[:sorting] == 'ingredients'
      @recipes = @recipes.order('recipes.ingredients ASC')
    end
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def edit
  end

  def create
    @recipe = Recipe.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:dish, :description, :length, :ingredients)
    end
end
