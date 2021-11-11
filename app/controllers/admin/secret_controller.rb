class Admin::SecretController < AdminController
    def home
        @users = User.all
        respond_to do |format|
            format.html
        end   
    end 
    def recipe
        @recette = Recette.find(params[:id])
        @nbIn = @recette.ingredients.count
        respond_to do |format|
         format.html
        end
    end   

end   