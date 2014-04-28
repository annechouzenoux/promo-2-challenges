class AddColumnRating < ActiveRecord::Migration
  def up
    #TODO: your code here to create the Posts table
    add_column :posts, :rating, :integer
  end
end