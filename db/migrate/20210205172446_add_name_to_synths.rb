class AddNameToSynths < ActiveRecord::Migration[6.0]
  def change
    add_column :synths, :name, :string
  end
end
