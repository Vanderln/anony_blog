class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string      :title
      t.string      :body
      t.integer     :author_id, :default => nil
      t.timestamps
    end
  end
end
