class Api::V1::NotificationsController < ApplicationController

  def create
    notification = Notification.new(notification_params)
    if notification.save
      render json: { message: 'Notificação recebida e armazenada com sucesso' }, status: :created
    else
      render json: { errors: notification.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def notification_params
    params.require(:notification).permit(:task_id, :task_url, :task_status, :action, :action_done_by_user)
  end
  
end