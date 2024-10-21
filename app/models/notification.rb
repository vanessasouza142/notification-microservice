class Notification < ApplicationRecord

  validates_presence_of :task_id, :task_url, :task_status, :action, :action_done_by_user

end
