class CreateLessonStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_statuses do |t|
      t.belongs_to :subscription
      t.integer :lesson_id
      t.string :status
       

      t.timestamps
    end
  end
end
