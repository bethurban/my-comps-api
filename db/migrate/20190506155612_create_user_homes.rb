class CreateUserHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_homes do |t|
      t.integer :user_id
      t.integer :home_id
    end
  end
end
