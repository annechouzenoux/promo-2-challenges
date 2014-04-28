class CreatePosts < ActiveRecord::Migration
  def up
    #TODO: your code here to create the Posts table
    create_table :posts do |p|
      p.string :name
      p.string :source_url
      p.datetime :date
    end

  end
end