class MainController < ApplicationController
    def quadruple
        @quadruple = params[:number].to_i ** 4
        render "quadruple.html.erb"
    end
    
    def subscribe
        @name = params[:name]
        @email = params[:email]
        puts "Thanks, #{@name}! You are subscribed with this email: #{@email}!"
        render "subscribe.html.erb"
    end
    
    def signup
        @name = params[:user_name]
        @email = params[:email]
        @password = params[:password]
        if (params[:password] == params[:password_confirm])
            @password = params[:password]
        else
            flash.now[:alert] = "Passwords must match"
        if (@password.length < 6)
            flash.now[:alert] = "Password must be at least 6 characters long"
        end
        render "signup.html.erb"
    end
    
    def signup
        @first_name = params[:first_name]
        @last_name = params[:last_name]
        @blurb = params[:blurb]
        @hobbies = params[:hobbies]
    end
    
    def signin
        @first_id = params[:user_id]
        @password = params[:password]
        if(@first_id != "")
            flash.now[:alert] = "Welcome, #{@first_id}"
        end
    
    end
    
end
