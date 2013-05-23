class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string      :title
      t.integer     :author_id, :default => nil
      t.timestamps
    end
  end
end
