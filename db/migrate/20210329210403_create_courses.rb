class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.belongs_to :teacher 

      t.timestamps
    end
  end
end
