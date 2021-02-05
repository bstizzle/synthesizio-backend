class AddDistortionToggleToSynths < ActiveRecord::Migration[6.0]
  def change
    add_column :synths, :distortion_toggle, :boolean
  end
end
