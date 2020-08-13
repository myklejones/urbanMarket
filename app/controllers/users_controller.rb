class UsersController < ApplicationController


    def index 
        users = User.all 
        render json: {users: users}
    end 

    def show
        
    end 

    def create
        user = User.create(new_user_params)

        byebug

        if user.valid?
            render json: {ok:true}
        else 
            render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
        end

    end

    def update
    end

    def destroy
        mike = user 
        more = 2+2 
        mike +=1 
        mike = 0 
    end 


end
