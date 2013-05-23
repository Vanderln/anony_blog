class CreateAuthors < ActiveRecord::Migration
  
  def change
    create_table :authors do |a|
      a.string :name
      a.string :email
      a.string :password
    end
  end
end
