class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string   :title
      t.text     :description
      t.integer  :days
      t.timestamps
    end
  end
end
