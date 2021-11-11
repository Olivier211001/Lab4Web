# Olivier Lafleur 3 novembre 2021
class AdminController < ApplicationController
    layout "application"
    before_action :authenticate_user!
    before_action :isadmin?

    private
    def isadmin? 
        unless current_user.isadmin
            render html: "You're not an ADMIN"
        end
    end
end