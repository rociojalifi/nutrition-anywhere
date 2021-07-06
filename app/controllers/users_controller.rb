def users_params
  params.require(:user).permit(:email, :full_name, :photo)
end