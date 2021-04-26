class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.belongs_to :user
      t.belongs_to :course
      t.boolean :complete, :default => false
      
      t.timestamps
    end
  end
end
