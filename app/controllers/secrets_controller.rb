class SecretsController < ApplicationController
    # before_action :require_login
    
    def show
        if session.include?(:name)
            @social_security = Faker::IDNumber.valid
        else
            redirect_to '/login'
        end
    end

    private
    # def require_login
    #     # unless session.include? :name
    #     #     return head(:forbidden)
    #     #     redirect_to '/login'
    #     # end
    #     if session[:name].empty? || session[:name] == nil
    #         redirect_to '/login'
    #     end
    # end
end