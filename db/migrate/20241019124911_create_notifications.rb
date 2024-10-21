class CreateNotifications < ActiveRecord::Migration[7.1]
  def change
    create_table :notifications do |t|
      t.integer :task_id
      t.string :task_url
      t.string :task_status
      t.string :action
      t.string :action_done_by_user

      t.timestamps
    end
  end
end
