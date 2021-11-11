#Olivier Lafleur 20 octobre 2021
class PublicController < ApplicationController   
    def home 
        @recettes = Recette.all.order('titre')
        respond_to do |format|
            format.html
        end         
    end
    def recipe 
        @recette = Recette.find(params[:id])
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