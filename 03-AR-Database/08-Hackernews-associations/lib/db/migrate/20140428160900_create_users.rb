class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |u|
      u.string    :name
      u.string    :email
    end
  end
end