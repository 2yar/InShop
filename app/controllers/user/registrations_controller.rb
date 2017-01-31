class User::RegistrationsController < Devise::RegistrationsController

  private
  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :phone, :notes, :avatar, :email, :password, :password_confirmation, :current_password)
  end
end
