class RecipesController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index 
        recipes = Recipe.all
        render json: recipes 
    end

    def create 
        recipe = Recipe.create!(recipe_params, user_id: session[:user_id])
        render json: recipe, status: :created 
    end

    private 

    def recipe_params 
        params.permit(:title, :instruction, :minutes_to_complete)
    end

    def render_unprocessable_entity(invalid) 
        render json: { error: invalid.record.errors }, status: :unprocessable_entity 
    end
end
