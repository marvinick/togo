class RegistrationsController < Devise::RegistrationsController

  private
      def sign_up_params
        params.require(:user).permit(:username, :email, :password, :about, location_id: [])
      end

    def account_update_params
      params.require(:user).permit(:username, :email, :password, :current_password, :about, location_id: [])
    end
end
