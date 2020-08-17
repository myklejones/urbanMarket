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
       user = user_params 
    end 

    private
    def update_user_params
        params.require(:user).permit(:id,:username, :name, :age, :dob, :city_state, :about_me, :sex, :interest, :preference, :body_type, :profession, :photo)
    end

    def user_params 
        params.permit(:id,:username, :email, :name, :photo, :age, :dob, :city_state, :about_me, :sex, :active, :interest, :preference, :body_type, :profession)
    end 

    def new_user_params 
        params.permit(:username, :password ,:email, :name, :photo, :age, :dob, :city_state, :about_me, :sex, :active, :interest, :preference, :body_type, :profession)
    end 



end
