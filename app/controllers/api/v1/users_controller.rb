class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :get_user]

  def create
    user = User.create(user_params)

    if user.valid?
      token = encode_token({ user_id: user.id, username: user.username })
      render json: { user: { username: user.username }, token: token}, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def get_user
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
