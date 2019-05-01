class AddCitystateToHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :citystate, :string
  end
end
