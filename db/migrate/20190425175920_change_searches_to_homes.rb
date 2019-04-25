class ChangeSearchesToHomes < ActiveRecord::Migration[5.2]
  def change
    rename_table :searches, :homes
  end
end
