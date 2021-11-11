#Olivier Lafleur 10 novembre 2021
class PrivateController < ApplicationController
    layout "application"
    before_action :authenticate_user!
    def home 
        @recettes = current_user.recettes.order('titre')
        respond_to do |format|
            format.html
        end         
    end
    def recipe 
        @recette = Recette.find(params[:id])
        unless current_user == @recette.user
            redirect_to "/mesrecettes"
        end
        @ingredients = @recette.ingredients
        @noms = @ingredients.collect do |i| {nom_ing: i.nom}
        end
        respond_to do |format|
            format.html         
            format.xml  { render xml: @noms }
            format.json { render json: @noms }
        end
    end
 end