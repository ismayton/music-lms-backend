class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :markdown_url
      t.belongs_to :course 
      
      t.timestamps
    end
  end
end
