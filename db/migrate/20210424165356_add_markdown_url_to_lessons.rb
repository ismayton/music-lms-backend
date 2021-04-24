class AddMarkdownUrlToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :markdown_url, :string
  end
end
